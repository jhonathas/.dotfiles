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
fi

source ~/.config/tmuxinator/tmuxinator.zsh

deploy () {
  environment=$1

  branch=$(git branch | grep \* | cut -d ' ' -f2)
  [ -n "${2}" ] && branch=$2

  rm -rf .deliver/releases
  mix edeliver build release to $environment --branch=$branch
  mix edeliver deploy release to $environment

  mix edeliver stop -- $environment
}

run_on () {
  ip=$1
  command=$2

  ssh ubuntu@$ip "source ~/.profile && $command"
}
