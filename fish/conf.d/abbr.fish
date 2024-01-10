abbr -a vps "ssh root@192.168.1.1"
abbr -a cal "ncal -C"
abbr -a md "docker run -d -p 8080:80 doocs/md:latest"
abbr -a wshot 'grim -g "$(slurp)" - | swappy -f -'
abbr -a wgif 'wf-recorder -f $(date +"%Y-%m-%d-%H%M%S").gif -c gif -g "$(slurp)"'
