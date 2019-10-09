#!/bin/bash
# Dmenu script for editing some of my more frequently edited config files.


declare -nc options=(" i3
i3status
compton
polybar
zsh
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit a config file: ')

if [ "$choice" == 'quit ' ]; then
  echo "Program terminated."
fi
if [ "$choice" == ' i3' ]; then
  exec alacritty -e nvim ~/.config/i3/config
fi
if [ "$choice" == 'i3status' ]; then
  exec alacritty -e nvim ~/.config/i3status/config
fi
if [ "$choice" == 'compton' ]; then
  exec alacritty -e nvim ~/.config/compton.conf
fi
if [ "$choice" == 'polybar' ]; then
  exec alacritty -e nvim ~/.config/polybar/config
fi
if [ "$choice" == 'zsh' ]; then
  exec alacritty -e nvim ~/.zsh.d/init.sh
fi
