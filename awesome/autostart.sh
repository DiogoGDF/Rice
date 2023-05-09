#!/bin/bash

sleep 1
picom &
xmodmap ~/.Xmodmap
xinput set-prop 11 "libinput Natural Scrolling Enabled" 1
xinput set-prop 10 "libinput Natural Scrolling Enabled" 1
xinput set-prop 10 "libinput Tapping Enabled" 1
xinput set-prop 11 "libinput Tapping Enabled" 1
unclutter &
xrandr --output eDP-1 --mode 1920x1080 --pos 0x1080 --rotate normal --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
~/.fehbg
