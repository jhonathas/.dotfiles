#!/bin/bash
# Power menu

declare -nc options=(" lock
suspend
reboot
switch_user
logout
shutdown")

choice=$(echo -e "${options[@]}" | rofi -dmenu -i -p 'Power menu')

if [ "$choice" == ' lock' ]; then
  exec i3exit lock
fi

if [ "$choice" == 'suspend' ]; then
  exec i3exit suspend
fi

if [ "$choice" == 'reboot' ]; then
  exec i3exit reboot
fi

if [ "$choice" == 'switch_user' ]; then
  exec i3exit switch_user
fi

if [ "$choice" == 'logout' ]; then
  exec i3exit logout
fi

if [ "$choice" == 'shutdown' ]; then
  exec i3exit shutdown
fi
