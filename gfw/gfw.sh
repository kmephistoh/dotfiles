sudo ip route del default
sudo ip route add default via 192.168.18.190 dev wlan0
sudo sed -i "s/192.168.18.1/129.168.18.190/g" /etc/resolv.conf
