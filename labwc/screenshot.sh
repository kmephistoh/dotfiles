#!/bin/sh
NOW=$(date +"%Y-%m-%d-%H%M%S")
grim -g "$(slurp )" -t png $HOME/Pictures/grim-$NOW.png
#QT_QPA_PLATFORM=xcb /usr/bin/ksnip $HOME/Pictures/grim-$NOW.png
/usr/bin/ksnip $HOME/Pictures/grim-$NOW.png
