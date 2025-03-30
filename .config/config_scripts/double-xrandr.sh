#!/bin/env bash

xrandr --output DP-2 --primary --mode 2560x1440 --rate 144.00 --rotate normal

if xrandr --query | grep -q "DP-4 connected"; then
  xrandr --output DP-4 --left-of DP-2 --mode 2560x1440 --rate 144.00 --rotate "$1"
else
  xrandr --output DP-4 --off
fi

if [ -z "$1" ]; then
else
  xrandr --output DP-0 --off --output DP-1 --off --output HDMI-0 --off --output DP-2 --primary --mode 2560x1440 --rate 144.00 --pos 1440x946 --rotate normal --output DP-3 --off --output DP-4 --mode 2560x1440 --rate 144.00 --pos 0x0 --rotate right --output DP-5 --off --output USB-C-0 --off
fi
