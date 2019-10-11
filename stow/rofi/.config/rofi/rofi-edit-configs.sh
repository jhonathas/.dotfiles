#!/bin/bash
# Rofi script for editing some of my more frequently edited config files.

declare -nc options=("quit
i3
i3status
compton
polybar
zsh")

choice=$(echo -e "${options[@]}" | rofi -dmenu -i -p 'Edit a config file')

open_alacritty() {
  exec alacritty --working-directory ~/.dotfiles -e nvim $1
}

if [ "$choice" == ' quit' ]; then
  echo "Program terminated."
fi

if [ "$choice" == 'i3' ]; then
  open_alacritty ~/.config/i3/config
fi

if [ "$choice" == 'i3status' ]; then
  open_alacritty ~/.config/i3status/config
fi

if [ "$choice" == 'compton' ]; then
  open_alacritty ~/.config/compton.conf
fi

if [ "$choice" == 'polybar' ]; then
  open_alacritty ~/.config/polybar/config
fi

if [ "$choice" == 'zsh' ]; then
  open_alacritty ~/.zsh.d/init.sh
fi
