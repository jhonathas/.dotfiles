#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Updating apt"
echo "=============================="
echo ""

sudo apt update
sudo apt upgrade -y

echo ""
echo "=============================="
echo "Adding apt repositories"
echo "=============================="
echo ""

ppa_list=(
  ppa:kgilmer/speed-ricer
  ppa:mmstick76/alacritty
)

for p in ${ppa_list[@]}
do
  echo ""
  echo "---- $p ----"
  echo ""
  sudo add-apt-repository -r -y "$p"
  sudo add-apt-repository -y "$p"
done

sudo apt update

echo ""
echo "=============================="
echo "Installig apt packages"
echo "=============================="
echo ""

apt_list=(
  # dependencies
  linux-headers-$(uname -r)
  build-essential
  libreadline-dev
  autoconf
  m4
  libncurses5-dev
  libwxgtk3.0-dev
  libgl1-mesa-dev
  libglu1-mesa-dev
  libpng-dev
  libssh-dev
  unixodbc-dev
  xsltproc
  fop
  dirmngr
  gpg
  libxft-dev
  # tools
  inxi
  curl
  stow
  htop
  git
  git-flow
  alacritty
  feh
  xbacklight
  redshift
  nmap
  poedit
  zsh
  vim
  nvim
  python-neovim
  python3-neovim
  fzf
  silversearcher-ag
  powertop
  # i3
  i3
  i3-gaps
  polybar
  rofi
  compton
)

for a in ${apt_list[@]}
do
  echo ""
  echo "---- $a ----"
  echo ""
  sudo apt install -y "$a"
done
