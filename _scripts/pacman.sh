#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installig pacman packages"
echo "=============================="
echo ""

sudo pacman -Syu

pacman_list=(
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
  noto-fonts
)

for p in ${pacman_list[@]}
do
  echo ""
  echo "---- $p ----"
  echo ""

  pacman -Qi $p &> /dev/null

  if [ $? -eq 0 ]; then
    echo "Ok"
  else
    sudo pacman -S "$p" --noconfirm
  fi
done
