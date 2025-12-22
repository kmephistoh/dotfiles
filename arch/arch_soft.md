# paru

1. 克隆 Paru 仓库
   git clone https://aur.archlinux.org/paru.git
   cd paru

2. 编译并安装（makepkg 会自动处理依赖）
   makepkg -si

# wlrctl

git clone https://git.sr.ht/~brocellous/wlrctl
meson setup --prefix=/usr/local build
ninja -C build install

# sing-box

paru -S sing-box

# fish

chsh -s /usr/bin/fish

# input

sudo pacman -S fcitx5-rime
sudo pacman -S noto-fonts-emoji
fc-cache -fv
fcitx5 -rd

# firefox

Automatic proxy configuration URL: http://192.168.1.5/proxy.pac

# chromium

sudo pacman -S chromium

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

# wpaperd

sudo pacman -S wpaperd

# dev

sudo pacman -S uv ty

# other

sudo pacman -S waybar firefox alacritty rust go atuin fish ttf-hack-nerd git rofi tmux noto-fonts-cjk cmake meson noto-fonts-emoji ttf-jetbrains-mono-nerd less obsidian hugo man-db man-pages fzf fastfetch flameshot rsync yt-dlp aria2 tree \
 7zip 0ad audacity blender godot wlr-randr sniffnet mangohud goverlay vlc vlc-plugins-all keepassxc jenkins libreoffice argocd \

# supertuxkart

sudo pacman -S supertuxkart

# steam

sudo pacman -S steam
首次启动steam，请翻墙，否则更新客户端奇慢

- dota2

sudo pacman -S renderdoc pango

# imagemagick

sudo pacman -S imagemagick

# obs-studio

sudo pacman -S obs-studio

# git

git config --global https.proxy http://192.168.1.5:1081
git config --global https.proxy https://192.168.1.5:1081

# ly

sudo systemctl enable --now ly@tty2.service

# 检查服务状态

sudo systemctl status ly@tty2.service

# strace

sudo pacman -S strace

# internet nm

sudo pacman -S networkmanager dnsmasq

0. wifi list
   nmcli device wifi list

1. wifi
   nmcli device wifi connect ssid password your_wifi_password

# internet iwctl

iwctl # 进入无线工具
device list # 查无线网卡名（如 wlan0）
station wlan0 scan # 扫描WiFi
station wlan0 get-networks # 列WiFi列表
station wlan0 connect "WiFi名" # 输入密码连接
exit # 退出工具
ping archlinux.org # 验证联网
