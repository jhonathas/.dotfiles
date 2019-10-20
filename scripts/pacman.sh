#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installig pacman packages"
echo "=============================="
echo ""

# Update packages
sudo pacman -Syu

pacman_list=(
  # asdf dependencies
  ncurses
  glu
  wxgtk2
  libpng
  libssh
  unixodbc
  unzip
  # tools
  neofetch
  stow
  git
  alacritty
  feh
  nmap
  poedit
  neovim
  python-neovim
  fzf
  tk
  the_silver_searcher
  dbeaver
  powertop
  cpupower
  tlp
  tmux
  rofi
  python-i3-py
  arch-audit
  timeshift
  jdk11-openjdk
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
