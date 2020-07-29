#!/bin/bash

SCREENPATH="$HOME/.config/sway"

getScreen () {
    eval "rm $HOME/.config/sway/$2.png"
    eval "grim   -o $1 $SCREENPATH/$2-raw.png"
    eval "ffmpeg -loglevel warning -f image2 -i $SCREENPATH/$2-raw.png "\
                "-filter_complex \"boxblur=luma_radius=4:luma_power=4\" "\
                "-vframes 1 $SCREENPATH/$2.png"
}

getScreen "eDP-1"    "lock-edp" &
getScreen "HDMI-A-1" "lock-hdmi" &

wait

swaylock -f -u -i    "eDP-1:$SCREENPATH/lock-edp.png" \
               -i "HDMI-A-1:$SCREENPATH/lock-hdmi.png"
