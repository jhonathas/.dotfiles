#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installig pacman packages"
echo "=============================="
echo ""

# Update packages
sudo pacman -Syu

pacman_list=(
  ncurses
  glu
  wxgtk2
  libpng
  libssh
  unixodbc
  unzip
  ibus
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
  # i3
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
  ttf-opensans
  ttf-ubuntu-font-family
  noto-fonts
  gnome-screenshot
  python-i3-py
  #xorg
  xterm
  mesa
  lightdm
  lightdm-gtk-greeter
  accountsservice
  qutebrowser
  w3m
  ranger
  arch-audit
  thunar
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
