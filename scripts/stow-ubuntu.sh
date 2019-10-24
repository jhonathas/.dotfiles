#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Removing stow /home"
echo "=============================="
echo ""

remove_list=(
  ~/.zshrc
  ~/.config/alacritty
  ~/.config/autokey
  ~/.config/htop/htoprc
)

for item in ${remove_list[@]}
do
  echo ""
  echo "---- removing $item ----"
  echo ""
  rm -rf ${item}
done

echo ""
echo "=============================="
echo "Stowing /home"
echo "=============================="
echo ""

stow_list=(
  git
  tmux
  zsh
  vim
  nvim
  shell
  htop
  autokey
  alacritty-${DEVICE}-i3wm
  xresources-ubuntu
  regolith
  i3status
  backlight
  polybar
  wallpapers
)

for item in ${stow_list[@]}
do
  echo ""
  echo "---- stowing $item ----"
  echo ""
  stow -v -d ${DOTFILES_PATH}/stow ${item} -t ~/
done
