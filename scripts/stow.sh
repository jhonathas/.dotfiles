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
  ~/.Xresources
  ~/.profile
  ~/.config/mimeapps.list
  ~/.config/alacritty
  ~/.config/i3
  ~/.config/i3status
  ~/.config/autokey
  ~/.config/compton.conf
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
  alacritty-${DEVICE}-${WM}
)

# Only on i3wm
if [[ "$WM" == "i3wm" ]]; then
  stow_wm_list=(
    i3-${OS}
    i3status
    i3exit
    polybar
    redshift
    compton
    rofi
    xresources
    profile
    mimeapps
    backlight
    autokey
    dmenu
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
if [[ "$OS" != "macos" ]]; then
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
    /etc/X11/xorg.conf.d/40-mouse.conf
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
    etc-${DEVICE}-${OS}
  )

  for item in ${stow_list[@]}
  do
    echo ""
    echo "---- stowing /etc $item ----"
    echo ""
    sudo stow -v ${item} -d ${DOTFILES_PATH}/stow -t /etc
  done
fi

if [[ "$WM" == "i3wm" ]]; then
  echo ""
  echo "=============================="
  echo "Remove stow /usr"
  echo "=============================="
  echo ""

  remove_list=(
    /usr/bin/i3exit
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
  echo "Stowing /usr"
  echo "=============================="
  echo ""

  stow_list=(
    usr-${WM}
  )

  for item in ${stow_list[@]}
  do
    echo ""
    echo "---- stowing /usr $item ----"
    echo ""
    sudo stow -v ${item} -d ${DOTFILES_PATH}/stow -t /usr
  done
fi
