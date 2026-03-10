#!/bin/bash
BLUETOOTH_MAC="50:5E:5C:95:0B:A4"

# 检查蓝牙是否开启
if ! bluetoothctl show | grep -q "Powered: yes"; then
    notify-send "蓝牙未开启" "请先打开蓝牙"
    bluetoothctl power on
    exit 1
fi

# 检查设备是否配对
if ! bluetoothctl devices | grep -q "$BLUETOOTH_MAC"; then
    notify-send "设备未配对" "请先配对 $BLUETOOTH_MAC"
    exit 1
fi

# 切换连接状态
if bluetoothctl info "$BLUETOOTH_MAC" | grep -q "Connected: yes"; then
    bluetoothctl disconnect "$BLUETOOTH_MAC"
    notify-send "蓝牙已断开" "$BLUETOOTH_MAC"
else
    bluetoothctl connect "$BLUETOOTH_MAC"
    notify-send "蓝牙已连接" "$BLUETOOTH_MAC"
fi
