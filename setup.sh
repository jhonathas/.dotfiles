#!/usr/bin/env bash

# ==========================
# Global Setup variables
# ==========================

export PRIVATE_DOTFILE_HTTPS_REPO="https://github.com/diegonogueira/private-dotfiles.git"
export PRIVATE_DOTFILE_SSH_REPO="git@github.com:diegonogueira/private-dotfiles.git"
export PRIVATE_DOTFILE_PATH=~/.private-dotfiles

export DOTFILES_PATH=~/.dotfiles
export DOTFILES_SSH_REPO="git@github.com:diegonogueira/dotfiles.git"

# ==========================
# Private dotfiles
# ==========================

if ! [ -d "$PRIVATE_DOTFILE_PATH" ]; then
  git clone $PRIVATE_DOTFILE_HTTPS_REPO $PRIVATE_DOTFILE_PATH
  cd $PRIVATE_DOTFILE_PATH
  git remote set-url origin "$PRIVATE_DOTFILE_SSH_REPO"

  cd $DOTFILES_PATH
  git remote set-url origin "$DOTFILES_SSH_REPO"

  echo ""
  echo "!! Stoped !!"
  echo "Your private dotfiles is not configured."
  echo ""

  exit
fi

# ==========================
# Menu
# ==========================

echo ""
echo "Choose the device to setup:"
echo ""
echo "1) iMac (OSX)"
echo "2) iMac (Ubuntu) (i3wm)"
echo "3) Macbook Air (OSX)"
echo "4) Macbook Air (Ubuntu) (i3wm)"
echo ""
read -p "Device number: " device_opt

export DEVICE=""; export OS=""; export WM=""

case $device_opt in
  "1") DEVICE="imac"        ; OS="osx"   ; WM="osx"  ; ./_setup-osx.sh    ;;
  "2") DEVICE="imac"        ; OS="ubuntu"; WM="i3wm" ; ./_setup-ubuntu.sh ;;
  "3") DEVICE="macbook-air" ; OS="osx"   ; WM="osx"  ; ./_setup-osx.sh    ;;
  "4") DEVICE="macbook-air" ; OS="ubuntu"; WM="i3wm" ; ./_setup-ubuntu.sh ;;
  *) echo "!! Invalid option !!" ;;
esac

# ==========================
# Finish
# ==========================

cd $DOTFILES_PATH

echo ""
echo "Finished!"
echo "You need to restart your system to apply the configuration."
echo ""
