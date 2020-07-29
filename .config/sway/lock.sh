#!/bin/bash

$(rm $HOME/.config/sway/lock-edp.png; \
grim -o eDP-1    $HOME/.config/sway/lock-edp-raw.png; \
ffmpeg -loglevel warning -f image2 -i $HOME/.config/sway/lock-edp-raw.png \
       -filter "boxblur=2" -vframes 1 $HOME/.config/sway/lock-edp.png &) || \
$(rm $HOME/.config/sway/lock-hdmi.png; \
grim -o HDMI-A-1 $HOME/.config/sway/lock-hdmi-raw.png; \
ffmpeg -loglevel warning -f image2 -i $HOME/.config/sway/lock-hdmi-raw.png \
       -filter "boxblur=2" -vframes 1 $HOME/.config/sway/lock-hdmi.png &); \
swaylock -f -u -i    eDP-1:$HOME/.config/sway/lock-edp.png \
               -i HDMI-A-1:$HOME/.config/sway/lock-hdmi.png
