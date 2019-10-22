PATH=/usr/local/heroku/bin:$PATH
export PATH=$PATH

export EDITOR="nvim"

if [[ "$(uname)" == "Darwin" ]]; then
  export PATH=$(brew --prefix openssl)/bin:$PATH
fi

# if [[ "$(uname)" == "Darwin" ]]; then
#   export JAVA_HOME=$(/usr/libexec/java_home)
# fi

export PATH="/usr/local/sbin:$PATH"

export STOW_DIR=$HOME/.dotfiles/stow

export HISTFILE=~/Dropbox/dotfiles/shell/.zsh_history

export ES_JAVA_OPTS="-Xms2g -Xmx2g"

export LC_ALL=en_US.UTF-8

export EDITOR='nvim'
