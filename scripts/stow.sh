#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Removing stow /home"
echo "=============================="
echo ""

remove_list=(
  ~/.i3
  ~/.zshrc
  ~/.dmenurc
  ~/.config/alacritty
  ~/.config/i3
  ~/.config/i3status
  ~/.config/autokey
  ~/.config/compton.conf
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
  dmenu
  alacritty-${DEVICE}-${WM}
)

# Only on i3wm
if [[ "$WM" == "i3wm" ]]; then
  stow_wm_list=(
    i3-${OS}
    i3status
    polybar
    redshift
    compton
  )

  stow_list=( `echo ${stow_list[@]}` `echo ${stow_wm_list[@]}` )
fi

for item in ${stow_list[@]}
do
  echo ""
  echo "---- stowing $item ----"
  echo ""
  stow -v -d ${DOTFILES_PATH}/stow ${item} -t ~/
done

# Only on linux
if [[ "$OS" != "osx" ]]; then
  echo ""
  echo "=============================="
  echo "Remove stow /etc"
  echo "=============================="
  echo ""

  remove_list=(
    # /etc/mbpfan.conf
    /etc/environment
    /etc/X11/xorg.conf.d/00-keyboard.conf
    /etc/X11/xorg.conf.d/30-touchpad.conf
  )

  for item in ${remove_list[@]}
  do
    echo ""
    echo "---- removing $item ----"
    echo ""
    sudo rm -rf ${item}
  done

  echo ""
  echo "=============================="
  echo "Stowing /etc"
  echo "=============================="
  echo ""

  stow_list=(
    etc-macbook-air-${OS}
  )

  for item in ${stow_list[@]}
  do
    echo ""
    echo "---- stowing /etc $item ----"
    echo ""
    sudo stow -v ${item} -d ${DOTFILES_PATH}/stow -t /etc
  done
fi
