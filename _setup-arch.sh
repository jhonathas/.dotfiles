#!/usr/bin/env bash

./_scripts/pacman.sh
./_scripts/yay.sh
./_scripts/stow.sh
./_scripts/zsh.sh
./_scripts/asdf.sh
./_scripts/vim.sh
./_scripts/config-arch.sh
cd $PRIVATE_DOTFILE_PATH && ./setup.sh

