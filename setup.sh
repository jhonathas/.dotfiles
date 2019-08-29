#!/usr/bin/env bash

device=$1

# available devices
devices=(
  macbook_air
  imac
)

# check argument
if [[ ! "${device}" =~ ^$devices ]]; then
  echo "ERROR: ${device} is not available device"
  exit
fi

# apps for all devices
apps=(
  git
  tmux
  tmuxinator
  zsh
  vim
  nvim
  shell
)

# device apps
macbook_air=(
  alacritty-maximized
)

imac=(
  alacritty-windowed
)

# run the stow command for the passed in directory ($2) in location $1
stowit() {
  usr=$1
  app=$2
  # -v verbose
  # -R recursive
  # -t target
  stow -v -R -t ${usr} ${app}
}

echo ""
echo "Stowing ${device} apps for user: ${whoami}"

# install apps available for all devices
for app in ${apps[@]}; do
  stowit "${HOME}" $app
done

# install apps available for some device only
eval device_apps="$"$device
for app in ${device_apps[@]}; do
  stowit "${HOME}" $app
done

echo ""
echo "##### ALL DONE"
