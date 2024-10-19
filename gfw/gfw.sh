sudo ip route del default
sudo ip route add default via 192.168.124.11 dev wlp2s0
sudo sed -i "s/192.168.124.1/192.168.124.11/g" /etc/resolv.conf
