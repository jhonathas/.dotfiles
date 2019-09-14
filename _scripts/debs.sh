#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installing debs packages"
echo "=============================="
echo ""

deb_list=(
  https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  https://go.skype.com/skypeforlinux-64.deb
)

mkdir -p dependencies && cd dependencies

for d in ${deb_list[@]}
do
  echo ""
  echo "---- download $d ----"
  echo ""
  wget "$d"
done

sudo dpkg -i *.deb

cd ..
rm -rf dependencies
