#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Stow"
echo "=============================="
echo ""

stow_to_remove_list=(
  ./config/alacritty
  ./config/i3
  .zshrc
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
  alacritty-${DEVICE}-${OS}-${WM}
)

if [[ "$OS" == "ubuntu" ]]; then
  stow_ubuntu_list=(
    i3
    polybar
    redshift
    compton
  )

  stow_list=( `echo ${stow_list[@]}` `echo ${stow_ubuntu_list[@]}` )
fi

for s in ${stow_list[@]}
do
  echo ""
  echo "---- stowing $s ----"
  echo ""
  stow -v ${s}
done

stow_usr_list=(
  etc-xorg-${DEVICE}-${OS}-${WM}
)

for s in ${stow_usr_list[@]}
do
  echo ""
  echo "---- stowing /etc $s ----"
  echo ""
  sudo stow -v ${s} -t /etc
done
