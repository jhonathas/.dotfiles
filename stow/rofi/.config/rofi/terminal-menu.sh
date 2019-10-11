#!/bin/bash
# Terminal menu

declare -nc options=(" home
downloads
dotfiles
private-dotfiles
projects
etc
usr
root")

choice=$(echo -e "${options[@]}" | rofi -dmenu -i -p 'Choose the folder')

open_alacritty() {
  exec alacritty --working-directory $1 -e $SHELL
}

if [ "$choice" == ' home' ]; then
  open_alacritty ~/
fi

if [ "$choice" == 'downloads' ]; then
  open_alacritty ~/Downloads
fi

if [ "$choice" == 'dotfiles' ]; then
  open_alacritty ~/.dotfiles
fi

if [ "$choice" == 'private-dotfiles' ]; then
  open_alacritty ~/.private-dotfiles
fi

if [ "$choice" == 'projects' ]; then
  open_alacritty ~/Projects
fi

if [ "$choice" == 'etc' ]; then
  open_alacritty /etc
fi

if [ "$choice" == 'usr' ]; then
  open_alacritty /usr
fi

if [ "$choice" == 'root' ]; then
  open_alacritty /
fi
