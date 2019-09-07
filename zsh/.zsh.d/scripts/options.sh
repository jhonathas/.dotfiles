unset MAILCHECK # disable "you have mail" warning

#if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

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

source ~/.config/tmuxinator/tmuxinator.zsh

# alias tmux="tmux -u"
