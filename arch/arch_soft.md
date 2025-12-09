
# paru

# wlrctl

# sing-box

# fish
chsh -s /usr/bin/fish

# input 
sudo pacman -S fcitx5-rime
sudo pacman -S noto-fonts-emoji
fc-cache -fv
fcitx5 -rd

# firefox
Automatic proxy configuration URL: http://192.168.1.5/proxy.pac

# clipbord

sudo pacman -S clipcat

# labawc themes
https://mephisto.cc/tech/labwc-theme/

# ksinp
sudo pacman -S ksnip

# xdg-desktop-portal
sudo pacman -S xdg-desktop-portal
sudo pacman -S xdg-desktop-portal-wlr

# wlogout swaylock
sudo pacman -S swaylock

# other

sudo pacman -S waybar firefox alacritty rust go atuin fish ttf-hack-nerd steam git rofi tmux noto-fonts-cjk cmake meson noto-fonts-emoji less

# supertuxkart

sudo pacman -S supertuxkart

# git

git config --global https.proxy http://192.168.1.5:1081
git config --global https.proxy https://192.168.1.5:1081


# sing-box
paru -S sing-box

# internet nm

0. wifi list
nmcli device wifi list

1. wifi
nmcli device wifi connect ssid password your_wifi_password

#  internet iwctl

iwctl  # 进入无线工具
device list  # 查无线网卡名（如 wlan0）
station wlan0 scan  # 扫描WiFi
station wlan0 get-networks  # 列WiFi列表
station wlan0 connect "WiFi名"  # 输入密码连接
exit  # 退出工具
ping archlinux.org  # 验证联网
