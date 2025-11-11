#!/bin/bash

#### this is a menu for wofi that allows me to select from which config I want to open

# set styling for wofi menu
Dir=$(dirname "$0")
echo "$Dir"
Style="$Dir/style/style.css"
Colors="$Dir/style/colors"
Config="$Dir/style/config.ini"

#Set variables for the location of where I want to open the config from.
Hyprland=~/.config/hypr/hyprland.conf
Waybar=~/.config/waybar
Nvim=~/.config/nvim

main() {
   configOption=$(printf "Output\nWindow\nSelection" | wofi -d --style $Style --color $Colors --conf $Config)
   case "$configOption" in
   Output)
      hyprshot -m output
      ;;
   Window)
      hyprshot -m window
      ;;
   Selection)
      hyprshot -m region
      ;;
   esac
}

main
