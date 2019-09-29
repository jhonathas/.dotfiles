#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Stow"
echo "=============================="
echo ""

stow_to_remove_list=(
  ~/.config/alacritty
  ~/.config/i3
  ~/.zshrc
  ~/.config/autokey
)

for s in ${stow_to_remove_list[@]}
do
  echo ""
  echo "---- removing $s ----"
  echo ""
  rm -rf ${s}
done

stow_list=(
  git
  tmux
  zsh
  vim
  nvim
  shell
  htop
  autokey
  alacritty-${DEVICE}-${WM}
)

if [[ "$WM" == "i3wm" ]]; then
  stow_wm_list=(
    i3
    polybar
    redshift
    compton
  )

  stow_list=( `echo ${stow_list[@]}` `echo ${stow_wm_list[@]}` )
fi

for s in ${stow_list[@]}
do
  echo ""
  echo "---- stowing $s ----"
  echo ""
  stow -v ${s}
done

# /etc

stow_etc_list=(
  etc-${DEVICE}
)

for s in ${stow_etc_list[@]}
do
  echo ""
  echo "---- stowing /etc $s ----"
  echo ""
  sudo stow -v ${s} -t /etc
done
