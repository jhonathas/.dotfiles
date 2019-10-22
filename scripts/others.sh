#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Install others tools"
echo "=============================="
echo ""

if ! [[ -d ~/.jabba ]]; then
  curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
fi
