#!/bin/bash

BG=~/.config/sway/wallpaper.jpg
LOCK=~/.config/sway/lock.jpg

convert $BG -blur 0x3 $LOCK
