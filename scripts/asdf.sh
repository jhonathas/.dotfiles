#!/usr/bin/env bash

echo ""
echo "=============================="
echo "Install adsf tool"
echo "=============================="
echo ""

if ! [[ -d ~/.asdf ]]; then
  if [[ ! "$(uname)" == "Darwin" ]]; then
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf
    cd ~/.asdf
    git checkout "$(git describe --abbrev=0 --tags)"
  fi

  asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
  asdf plugin-add postgres https://github.com/smashedtoatoms/asdf-postgres.git
  asdf plugin-add redis https://github.com/smashedtoatoms/asdf-redis.git
  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
  asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

  # asdf install erlang 22.0.1
  # asdf install elixir 1.9.1
  # asdf install redis 4.0.10
  # asdf install postgres 10.4
  asdf install ruby 2.6.4
  # asdf install nodejs 10.16.3

  # asdf global nodejs 10.16.3
  # asdf global erlang 22.0.1
  # asdf global elixir 1.9.1
  # asdf global redis 4.0.10
  # asdf global postgres 10.4
  asdf global ruby 2.6.4

  gem install tmuxinator

  npm install -g yarn
fi

