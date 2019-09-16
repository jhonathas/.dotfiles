#!/usr/bin/env bash

./_scripts/apt.sh
./_scripts/snap.sh
./_scripts/debs.sh
./_scripts/zsh.sh
./_scripts/stow.sh
./_scripts/asdf.sh
./_scripts/vim.sh
cd $PRIVATE_DOTFILE_PATH && ./setup.sh
