#!/bin/bash

grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:- >> $HOME/.config/sway/colors.txt
