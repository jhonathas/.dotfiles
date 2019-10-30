#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Configuring Ubuntu"
echo "=============================="
echo ""

if [[ -f /etc/fonts/conf.d/70-no-bitmaps.conf ]]; then
  git clone https://github.com/stark/siji && cd siji
  ./install
  cd ..
  rm -rf siji
  sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
  sudo fc-cache -f -v
fi

echo "OK"

# Disable skypes pause spotfy in call
sudo sed -i 's/load-module module-role-cork/#load-module module-role-cork/' /etc/pulse/default.pa

sudo systemctl enable mbpfan

# sudo pip install i3-py
