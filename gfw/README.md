#  1. `sing-box-v1.11.4.json` 

    不包含proxy

#  2. `sing-box-proxy-v1.11.5.json`

    包含sock proxy 和 http proxy，用这份配置可在树莓派上开启一个代理服务，供局域网的设备翻墙使用。比如结合 `lighttpd` 可在Firefox
    上配置一个自动代理。

    iPhone、iPad 上也可以方便设置，速度很快，信我，没有中间软件软件损耗。
 
    
    自动代理文件配置请看下面

#  3. `proxy.pac`

    请查看proxy.pac文件

#  4. 关掉树莓派`Raspberry Pi 2 Model B` 指示灯
    
     红灯 LED 真的过于耀眼：
     Adding this line in /boot/firmware/config.txt for my Raspberry Pi 2 Model B Rev 1.1

     ```ini
        dtparam=pwr_led_trigger=none
     ```
     下面的选项未测试：
     
     Disable the PWR LED
        dtparam=pwr_led_trigger=none     # 这一条测试有效果
        dtparam=pwr_led_activelow=off

     Disable the ACT LED. 
        dtparam=act_led_trigger=none
        dtparam=act_led_activelow=off

     Disable the Ethernet LEDs. 
        dtparam=eth_led0=4
        dtparam=eth_led1=4
