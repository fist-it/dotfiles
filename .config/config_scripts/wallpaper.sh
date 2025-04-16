#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.local/wallpapers/"

WALLPAPER="tapeta_gory"

if [ -f "$WALLPAPER_DIR$WALLPAPER.jpg" ]; then
    feh --bg-fill "$WALLPAPER_DIR$WALLPAPER.jpg"
else
    echo "Wallpaper not found: $WALLPAPER_DIR$WALLPAPER.jpg"
fi
