#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Restoring dconf"
echo "=============================="
echo ""

DCONF_PATH=$DOTFILES_PATH/stow/dconf-$DEVICE

dconf load /org/gnome/desktop/interface/ < $DCONF_PATH/interface.dconf
dconf load /org/gnome/desktop/input-sources/ < $DCONF_PATH/input-source.dconf
dconf load /org/gnome/desktop/peripherals/keyboard/ < $DCONF_PATH/keyboard.dconf
dconf load /org/gnome/desktop/peripherals/touchpad/ < $DCONF_PATH/touchpad.dconf
dconf load /org/gnome/desktop/wm/preferences/ < $DCONF_PATH/preferences.dconf
dconf load /org/gnome/desktop/search-providers/ < $DCONF_PATH/search-providers.dconf

echo "OK"
