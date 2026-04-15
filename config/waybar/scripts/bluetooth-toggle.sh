#!/bin/bash
BLUETOOTH_MAC="50:5E:5C:95:0B:A4"
WAIT=0.2

notify() {
    notify-send -i audio-speakers "$1" "$2"
}

# 确保蓝牙已开启
if ! bluetoothctl show | grep -q "Powered: yes"; then
    notify "蓝牙未开启" "正在开启..."
    bluetoothctl power on >/dev/null 2>&1
    sleep $WAIT
fi

# 获取当前连接状态
info=$(bluetoothctl info "$BLUETOOTH_MAC")

if echo "$info" | grep -q "Connected: yes"; then
    # 已连接 → 断开
    bluetoothctl disconnect "$BLUETOOTH_MAC" >/dev/null 2>&1
    notify "蓝牙已断开" "$BLUETOOTH_MAC"
else
    # 尝试连接
    bluetoothctl connect "$BLUETOOTH_MAC" >/dev/null 2>&1
    sleep $WAIT

    # 验证结果
    if bluetoothctl info "$BLUETOOTH_MAC" | grep -q "Connected: yes"; then
        notify "连接成功" "已连接 $BLUETOOTH_MAC"
    else
        notify "连接失败" "蓝牙设备未开机或不在附近"
        exit 1
    fi
fi
