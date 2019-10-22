#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Install others tools"
echo "=============================="
echo ""

if ! [[ -d ~/.jabba ]]; then
  curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh

  jabba install openjdk@1.11.0-2
  jabba use openjdk@1.11.0-2
  jabba alias default openjdk@1.11.0-2
fi
