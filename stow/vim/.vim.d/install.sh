#!/bin/sh

# backup
if [ -d "$HOME/.vimrc" ]; then
  mv ~/.vimrc ~/.vimrc.backup
  echo '~/.vimrc.backup created'
fi

if [ -d "$HOME/.vim" ]; then
  mv ~/.vim ~/.vim.backup
  echo '~/.vim.backup created'
fi

if [ -d "$HOME/.config/nvim" ]; then
  mv ~/.config/nvim ~/.nvim.backup
  echo '~/.nvim.backup created'
fi

# clone the repository
git clone git@github.com:diegonogueira/vim-dotfiles.git .vim.d

# create symbol links
mkdir -p ~/.vim/bundle
mkdir -p ~/.config/nvim
ln -sf ~/.vim.d/vimrc.vim ~/.vimrc
ln -sf ~/.vim.d/vimrc.vim ~/.config/nvim/init.vim

# clone vundle plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install all plugins
vim +PlugInstall +qall
nvim +PlugInstall +qall
nvim +UpdateRemotePlugins +qall

echo 'Instaled!'
