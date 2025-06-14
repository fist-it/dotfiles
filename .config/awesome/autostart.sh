#!/bin/env bash

run() {
    if ! pgrep -f "$1" ; then
        $@ &
    fi
}

run "xset" s on
run "xset" s 300
run "xautolock" -time 4 -corners ---- -cornersize 30 -locker ~/.config/config_scripts/lock.sh
# run "/home/fist_it/.config/config_scripts/screenlayout.sh"
run "/home/fist_it/.config/config_scripts/double-xrandr.sh normal"
run "openrgb" -p basic
run "nvfancontrol"
setxkbmap -layout us,pl -option grp:rctrl_toggle&
run "picom"
# run "polybar"
feh --bg-fill ~/.config/wallpapers/mountains_mono.jpg&
