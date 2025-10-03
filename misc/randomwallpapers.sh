#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpaperSlideshow/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)
# Get the name of the focused monitor with hyprctl

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload DP-1,"$WALLPAPER"
hyprctl hyprpaper reload HDMI-A-1,"$WALLPAPER"
