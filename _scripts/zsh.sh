#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installing oh my zsh"
echo "=============================="
echo ""

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

sudo chsh -s $(which zsh)
