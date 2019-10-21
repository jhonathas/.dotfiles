#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installing yay packages"
echo "=============================="
echo ""

if ! [[ -f $(which yay) ]]; then
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..
  rm -rf yay
fi

# Update packages
yay -Syu

yay_list=(
  grv
  spotify
  postman
  gitflow-avh
  polybar
  skypeforlinux-stable-bin
  google-chrome
  autokey
  mbpfan-git
  bluez-utils-compat
)

for item in ${yay_list[@]}
do
  echo ""
  echo "---- $item ----"
  echo ""

  yay -Qi $item &> /dev/null

  if [ $? -eq 0 ]; then
    echo "Ok"
  else
    yay -S "$item" --noconfirm
  fi
done
