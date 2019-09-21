#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Install vim and nvim plugs"
echo "=============================="
echo ""

vim +PlugInstall +qall
vim +PlugUpdate +qall

nvim +PlugInstall +qall
nvim +PlugUpdate +qall
nvim +UpdateRemotePlugins +qall

echo "OK"
