#!/usr/bin/env bash

# Set the theme to first arg

# Check if the theme exists via relative path
if [ -f "themes/$1.conf" ]; then
    # Source the theme
    ln -sf "themes/$1.conf" theme.conf
else
    # If the theme doesn't exist, print an error
    echo "Theme $1 not found"
fi
