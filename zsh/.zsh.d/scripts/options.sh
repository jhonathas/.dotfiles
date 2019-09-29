unset MAILCHECK # disable "you have mail" warning

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# fzf (mac)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [[ "$(uname)" == "Darwin" ]]; then
  if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
  fi
fi

export LC_ALL=en_US.UTF-8
export EDITOR='nvim'
export STOW_DIR=$HOME/.dotfiles

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
  source /usr/share/doc/fzf/examples/key-bindings.zsh

  alert() {
    notify-send --icon=gtk-info Alert $1
  }
fi

source ~/.config/tmuxinator/tmuxinator.zsh

