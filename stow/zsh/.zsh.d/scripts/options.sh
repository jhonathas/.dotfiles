unset MAILCHECK

# Asdf
if [[ "$(uname)" == "Darwin" ]]; then
  . $(brew --prefix asdf)/asdf.sh
  . $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash

  ulimit -S -n 2048
  unsetopt correctall
  setopt +o nomatch
else
  # . $HOME/.asdf/asdf.sh
  # . $HOME/.asdf/completions/asdf.bash
fi

# Tmuxinator
source ~/.config/tmuxinator/tmuxinator.zsh

if [[ "$(uname)" == "Darwin" ]]; then
  if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
  fi
fi

# if [[ "$os" == "Ubuntu" ]]; then
#   source /usr/share/doc/fzf/examples/key-bindings.zsh
# fi

# if [[ "$os" == "\"Manjaro Linux\"" ]]; then
#   source /usr/share/fzf/key-bindings.zsh
#   source /usr/share/fzf/completion.zsh
# fi

alert() {
  notify-send --icon=gtk-info Alert $1
}

