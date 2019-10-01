#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installig pacman packages"
echo "=============================="
echo ""

sudo pacman -Syu

pacman_list=(
  grub-efi-x86_64
  efibootmgr
  neofetch
  sudo
  network-manager-applet
  networkmanager
  cpupower
  gnome-keyring
  openssh
  curl
  stow
  htop
  git
  tk
  alacritty
  feh
  redshift
  nmap
  poedit
  zsh
  vim
  neovim
  xclip
  python-neovim
  fzf
  the_silver_searcher
  dbeaver
  powertop
  tmux
  i3
  rofi
  compton
  upower
  dunst
  pulseaudio
  pulseaudio-alsa
  alsa-utils
  ttf-dejavu
  ttf-liberation
  ttf-linux-libertine
  ttf-mac-fonts
  ttf-ms-fonts
  ttf-opensans
  ttf-ubuntu-font-family
  noto-fonts
  gnome-screenshot
  python-i3-py
  xorg-util-macros
  xorg-server
  xorg-xinit
  xterm
  mesa
  lightdm
  lightdm-gtk-greeter
  accountsservice
  qutebrowser
)

for item in ${pacman_list[@]}
do
  echo ""
  echo "---- $item ----"
  echo ""

  pacman -Qi $item &> /dev/null

  if [ $? -eq 0 ]; then
    echo "Ok"
  else
    sudo pacman -S "$item" --noconfirm
  fi
done
