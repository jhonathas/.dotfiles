#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Configuring Arch"
echo "=============================="
echo ""

# não sei se precisa
# pacmd set-source-port alsa_input.pci-0000_00_1b.0.analog-stereo analog-input-mic

if ! [[ -f "/etc/localtime" ]]; then
  sudo ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
  sudo hwclock --systohc

  echo "en_US.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
  echo "LANG=en_US.UTF-8"  | sudo tee -a /etc/locale.conf
  echo "LANGUAGE=en_US"    | sudo tee -a /etc/locale.conf
  echo "LC_ALL=C"          | sudo tee -a /etc/locale.conf

  sudo locale-gen
fi

if ! [[ -f "/etc/hostname" ]]; then
  host="$DEVICE-$OS"

  echo "$host"                             | sudo tee -a /etc/hostname
  echo "127.0.0.1	localhost"               | sudo tee -a /etc/hosts
  echo "::1	localhost"                     | sudo tee -a /etc/hosts
  echo "127.0.1.1	$host.localdomain	$host" | sudo tee -a /etc/hosts
fi

# sudo systemctl enable mbpfan
sudo systemctl enable cpupower
sudo systemctl enable powertop
