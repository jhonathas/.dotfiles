#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installing debs packages"
echo "=============================="
echo ""

deb_list=(
  google-chrome-stable,https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  dbeaver-ce,https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
  skype,https://repo.skype.com/latest/skypeforlinux-64.deb
)

mkdir -p dependencies && cd dependencies

for d in ${deb_list[@]}
do
  package=$(echo $d | cut -d',' -f1)
  package_url=$(echo $d | cut -d',' -f2)

  echo ""
  echo "---- download $package ----"
  echo ""

  # dpkg -s $package &> /dev/null

  # if [ $? -eq 0 ]; then
  #   echo "Ok"
  # else
    wget "$package_url"
  # fi
done

echo ""
sudo dpkg -i *.deb

cd ..
rm -rf dependencies
