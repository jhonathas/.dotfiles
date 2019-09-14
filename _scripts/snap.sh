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
  sudo snap install "$s"
done

snap_classic_list=(
  alacritty
)

for s in ${snap_classic_list[@]}
do
  echo ""
  echo "---- $s --classic ----"
  echo ""
  sudo snap install "$s" --classic
done
