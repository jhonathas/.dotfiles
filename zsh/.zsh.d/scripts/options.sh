unset MAILCHECK # disable "you have mail" warning

os=$(awk -F= '/^NAME/{print $2}' /etc/os-release)

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
# export LC_MESSAGES="C"
# export LANG=es_US.UTF-8

export EDITOR='nvim'
export STOW_DIR=$HOME/.dotfiles

if [[ -d "/usr/lib/jvm/java-11-openjdk-amd64" ]]; then
  export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
fi

if [[ -d "/usr/lib/jvm/java-12-openjdk" ]]; then
  export JAVA_HOME="/usr/lib/jvm/java-12-openjdk"
fi

if [[ "$os" == "Ubuntu" ]]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh

fi

if [[ "$os" == "\"Arch Linux\"" ]]; then
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
fi

alert() {
  notify-send --icon=gtk-info Alert $1
}

source ~/.config/tmuxinator/tmuxinator.zsh
