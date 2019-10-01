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

yay -Syu

yay_list=(
  mailspring
  grv
  spotify
  postman
  gitflow-avh
  polybar
  skypeforlinux
  google-chrome
  autokey
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
