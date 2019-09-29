#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Install adsf tool"
echo "=============================="
echo ""

echo "OK"

if ! [[ -d ~/.asdf ]]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4

  # asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
  # asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
  # asdf plugin-add postgres https://github.com/smashedtoatoms/asdf-postgres.git
  # asdf plugin-add redis https://github.com/smashedtoatoms/asdf-redis.git
  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
  # asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

  #asdf install erlang
  #asdf install elixir
  #asdf install redis
  #asdf install postgres
  asdf install ruby 2.6.4
  #asdf install nodejs 10.16.3

  #asdf global nodejs 10.16.3
  asdf global ruby 2.6.4

  gem install tmuxinator
fi

