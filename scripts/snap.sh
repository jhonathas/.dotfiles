#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installing snap packages"
echo "=============================="
echo ""

snap_list=(
  mailspring
  grv
  spotify
  postman
)

for s in ${snap_list[@]}
do
  echo ""
  echo "---- $s ----"
  echo ""

  snap list | grep $s &> /dev/null

  if [ $? -eq 0 ]; then
    echo "Ok"
  else
    sudo snap install "$s"
  fi
done

snap_classic_list=(
  alacritty
  heroku
)

for s in ${snap_classic_list[@]}
do
  echo ""
  echo "---- $s --classic ----"
  echo ""

  snap list | grep $s &> /dev/null

  if [ $? -eq 0 ]; then
    echo "Ok"
  else
    sudo snap install "$s" --classic
  fi
done
