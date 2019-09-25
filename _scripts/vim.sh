#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Install vim and nvim plugs"
echo "=============================="
echo ""

vim +PlugInstall +PlugUpdate +qall
nvim +PlugInstall +PlugUpdate +UpdateRemotePlugins +qall

echo "OK"
