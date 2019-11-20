export EDITOR="nvim"

if [[ "$(uname)" == "Darwin" ]]; then
  PATH=/usr/local/heroku/bin:$PATH
  export PATH=$PATH
  export PATH=$(brew --prefix openssl)/bin:$PATH
  export PATH="/usr/local/sbin:$PATH"
fi

export STOW_DIR=$HOME/.dotfiles/stow

export HISTFILE=~/Dropbox/dotfiles/shell/.zsh_history

export LC_ALL=en_US.UTF-8

export EDITOR='nvim'

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/"
export ES_JAVA_OPTS="-Xms2g -Xmx2g"
export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'

# WSL2 configurations

# export $(dbus-launch)
# export LIBGL_ALWAYS_INDIRECT=1

# export WSL_VERSION=$(wsl.exe -l -v | grep -a '[*]' | sed 's/[^0-9]*//g')
# export WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)
# export DISPLAY=$WSL_HOST:0
