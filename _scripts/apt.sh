#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Adding apt repositories"
echo "=============================="
echo ""

ppa_list=(
  speed-ricer,ppa:kgilmer/speed-ricer
  alacritty,ppa:mmstick76/alacritty
)

for p in ${ppa_list[@]}
do
  repo=$(echo $p | cut -d',' -f1)
  repo_url=$(echo $p | cut -d',' -f2)

  echo ""
  echo "---- $repo ----"
  echo ""

  grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/* | grep $repo &> /dev/null

  if [ $? -eq 0 ]; then
    echo "Ok"
  else
    sudo add-apt-repository -y "$repo_url"
  fi
done

echo ""
echo "=============================="
echo "Updating apt"
echo "=============================="
echo ""

sudo apt update
sudo apt upgrade -y

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
  gitk
  alacritty
  feh
  xbacklight
  redshift
  nmap
  poedit
  zsh
  vim
  neovim
  python-neovim
  python3-neovim
  fzf
  silversearcher-ag
  powertop
  autokey-gtk
  # i3
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

  dpkg -s $a &> /dev/null

  if [ $? -eq 0 ]; then
    echo "Ok"
  else
    sudo apt install -y "$a"
  fi
done
