#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Install vim and nvim plugs"
echo "=============================="
echo ""

if ! [[ -f ~/.vim/autoload/plug.vim ]]; then
  vim +PlugInstall +qall
fi

if ! [[ -f ~/.local/share/nvim/site/autoload/plug.vim ]]; then
  nvim +PlugInstall +qall
  nvim +UpdateRemotePlugins +qall
fi

vim +PlugUpdate +qall
nvim +PlugUpdate +qall

echo "OK"
