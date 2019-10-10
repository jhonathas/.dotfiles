#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Configuring Manjaro"
echo "=============================="
echo ""

# Fix Skype
# https://forum.manjaro.org/t/skypeforlinux-doesnt-work-anymore-after-updating/99853/7
sudo chmod 4755 /usr/share/skypeforlinux/chrome-sandbox

# Fix accents
# https://superuser.com/a/1235405
sudo sed -i /usr/share/X11/locale/en_US.UTF-8/Compose -e 's/ć/ç/g' -e 's/Ć/Ç/g'

echo "Ok"

