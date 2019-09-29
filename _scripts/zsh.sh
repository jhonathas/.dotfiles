#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Installing oh my zsh"
echo "=============================="
echo ""

if ! [[ -d ~/.oh-my-zsh ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

  sudo chsh -s $(which zsh)

  echo ""
  echo "OBS: If zsh is not working"
  echo "sudo nvim /etc/passwd"
  echo "find your name and change from /bin/bash to /bin/zsh"
  echo ""
fi
