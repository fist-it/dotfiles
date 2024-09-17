#!/bin/env bash

xrandr --output DP-2 --primary --mode 2560x1440 --rate 144.00 

if [ ! -z $(xrandr --query | grep "DP-4 connected") ]; then
  xrandr --output DP-4 --left-of DP-2 --mode 2560x1440 --rate 144.00
else
  xrandr --output DP-4 --off
fi
