#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Configuring Ubuntu"
echo "=============================="
echo ""

if [[ -f /etc/fonts/conf.d/70-no-bitmaps.conf ]]; then
  sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
  sudo fc-cache -f -v
fi

echo "OK"

# sudo pip install i3-py
