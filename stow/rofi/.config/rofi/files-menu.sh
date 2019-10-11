#!/bin/bash
# Files menu

declare -nc options=(" home
downloads
dotfiles
private-dotfiles
projects
etc
usr
root")

choice=$(echo -e "${options[@]}" | rofi -dmenu -i -p 'Choose the folder')

if [ "$choice" == ' home' ]; then
  exec pcmanfm ~/
fi

if [ "$choice" == 'downloads' ]; then
  exec pcmanfm ~/Downloads
fi

if [ "$choice" == 'dotfiles' ]; then
  exec pcmanfm ~/.dotfiles
fi

if [ "$choice" == 'private-dotfiles' ]; then
  exec pcmanfm ~/.private-dotfiles
fi

if [ "$choice" == 'projects' ]; then
  exec pcmanfm ~/Projects
fi

if [ "$choice" == 'etc' ]; then
  exec pcmanfm /etc
fi

if [ "$choice" == 'usr' ]; then
  exec pcmanfm /usr
fi

if [ "$choice" == 'root' ]; then
  exec pcmanfm /
fi
