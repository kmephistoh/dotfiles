abbr -a vps "ssh root@mephisto.cc"
abbr -a rpi "ssh mephisto@192.168.1.5"
#abbr -a cal "ncal -C"
abbr -a md "docker run -d -p 8080:80 doocs/md:latest"
abbr -a wshot 'grim -g "$(slurp)" - | swappy -f -'
abbr -a wgif 'wf-recorder -f $(date +"%Y-%m-%d-%H%M%S").gif -c gif -g "$(slurp)"'
abbr -a stock 'python /home/mephisto/xueqiu.py'
abbr -a worklog 'python /home/mephisto/work/work_log.py'
abbr -a gfw 'bash ~/github/dotfiles/gfw/gfw.sh'
abbr -a ungfw 'bash ~/github/dotfiles/gfw/ungfw.sh'
abbr -a acton3 "bluetoothctl connect 50:5E:5C:95:0B:A4"
abbr -a airpods "bluetoothctl connect C0:95:6D:C0:A3:92"
abbr -a dis-acton3 "bluetoothctl disconnect 50:5E:5C:95:0B:A4"
abbr -a dis-airpods "bluetoothctl connect C0:95:6D:C0:A3:92"
abbr -a update "sudo pacman -Syu"
abbr -a cs2 "pkill fcitx5"
