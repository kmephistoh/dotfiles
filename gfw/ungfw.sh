sudo ip route del default
sudo ip route add default via 192.168.18.1 dev wlp2s0
sudo sed -i "s/192.168.18.190/192.168.18.1/g" /etc/resolv.conf
