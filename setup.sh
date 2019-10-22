#!/usr/bin/env bash

# ==========================
# Global Setup variables
# ==========================

export PRIVATE_DOTFILE_HTTPS_REPO="https://github.com/jhonathas/.dotfiles_private.git"
export PRIVATE_DOTFILE_SSH_REPO="git@github.com:jhonathas/.dotfiles_private.git"
export PRIVATE_DOTFILE_PATH=~/.dotfiles_private

export DOTFILES_PATH=~/.dotfiles
export DOTFILES_SSH_REPO="git@github.com:jhonathas/.dotfiles.git"

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

if ! [[ -f "$DOTFILES_PATH/.current_menu" ]]; then
  echo ""
  echo "Choose the device to setup:"
  echo ""
  echo "1) PC (macOS)"
  echo "2) iMac (Ubuntu) (i3wm)"
  echo "3) Macbook Air (OSX)"
  echo "4) Macbook Air (Ubuntu) (i3wm)"
  echo "5) Macbook Air (Manjaro) (i3wm)"
  echo "6) PC (Manjaro) (i3wm)"
  echo ""
  read -p "Device number: " device_opt

  echo $device_opt >> $DOTFILES_PATH/.current_menu
else
  device_opt=$(cat $DOTFILES_PATH/.current_menu)
fi

export DEVICE=""; export OS=""; export WM=""

case $device_opt in
  "1") DEVICE="pc"          ; OS="macos"     ; WM="macos"  ;;
  "2") DEVICE="imac"        ; OS="ubuntu"  ; WM="i3wm" ;;
  "3") DEVICE="macbook-air" ; OS="osx"     ; WM="osx"  ;;
  "4") DEVICE="macbook-air" ; OS="ubuntu"  ; WM="i3wm" ;;
  "5") DEVICE="macbook-air" ; OS="manjaro" ; WM="i3wm" ;;
  "6") DEVICE="pc"          ; OS="manjaro" ; WM="i3wm" ;;
  *) echo "!! Invalid option !!" ;;
esac

case $OS in
	"macos")
		./scripts/stow.sh
		./scripts/zsh.sh
		./scripts/stow.sh
		./scripts/asdf.sh
		./scripts/vim.sh
    ./scripts/others.sh
    ;;

	"manjaro")
		./scripts/pacman.sh
		./scripts/yay.sh
		./scripts/zsh.sh
		./scripts/stow.sh
		./scripts/asdf.sh
		./scripts/vim.sh
		./scripts/config-manjaro.sh
    ./scripts/others.sh
    ;;

	"ubuntu")
		./scripts/apt.sh
		./scripts/snap.sh
		./scripts/debs.sh
		./scripts/zsh.sh
		./scripts/stow.sh
		./scripts/asdf.sh
		./scripts/vim.sh
		./scripts/config-ubuntu.sh
    ./scripts/others.sh
esac

cd $PRIVATE_DOTFILE_PATH && ./setup.sh

# ==========================
# Finish
# ==========================

cd $DOTFILES_PATH

echo ""
echo "Finished!"
echo "You need to restart your system to apply the configuration."
echo ""
