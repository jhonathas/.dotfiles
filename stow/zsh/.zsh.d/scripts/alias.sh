alias ll="ls -Glahs"
alias ls="/bin/ls -G"
alias psgrep="ps aux | egrep -v egrep | egrep"

# alias edit="emacs"
# function edit() {
#   emacs $1 &
# }

alias edit="nvim"

alias editzsh="nvim ~/.zsh.d/"
alias edittm="nvim ~/.tmux.conf"
alias editmux="nvim ~/.config/tmuxinator"
alias editdotfiles="nvim ~/.dotfiles"
alias goemacs="cd ~/.emacs.d/"
alias editemacs="nvim ~/.emacs.d/"

# Elixir
alias mt="mix test"
alias mts="mix test --stale"
alias mtd="mix test.debug"
alias mta="mix test.all"
alias mtf="mix test.feature"
alias mtds="mix test.debug --stale"
alias mps="mix phx.server"
alias mted="MIX_ENV=test mix ecto.drop"
alias mdg="mix deps.get"
alias eni="cd assets && npm i && cd .."

# Ruby
alias be="bundle exec"
alias rails="be rails"
alias rake="be rake"
alias rdm="rake db:migrate"
alias rdc="rake db:create"
alias rs="rails s -b 0.0.0.0"
alias sidekiq="be sidekiq"

# GIT
alias gs="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gm="git merge --no-ff"
alias gp="git push -u && git push --tags"
alias gpm="git push origin master"
alias gf="git fetch origin -p"
alias glog="git log --graph"
alias gpr="git pull --rebase"
alias gc="git checkout"
alias gcm="git checkout master"
alias gcd="git checkout develop"
alias gx="gitx ."
alias gclean="git checkout -f && git clean -df"

function gcf() {
  git checkout feature/$1
}

alias gffs="git flow feature start"
alias gfff="git flow feature finish"
alias gffp="git flow feature publish"
alias gfft="git flow feature track"

alias gfhs="git flow hotfix start"
alias gfhf="git flow hotfix finish"

alias gfrs="git flow release start"
alias gfrf="git flow release finish"
alias gfrp="git flow release publish"
alias gfrt="git flow release track"

# ASDF
alias redis="redis-server . &"
alias postgres="pg_ctl start"
alias kpostgres="pg_ctl stop"

# React Native
alias rn="react-native"
alias rn-ios="rn run-ios"
alias rn-android="rn run-android"
alias rn-start="npm start -- --reset-cache"

# Bash
alias copy_key="cat ~/.ssh/id_rsa.pub | pbcopy"

# Ember
alias es="ember s"

# Commons
alias rmds="find . -name '.DS_Store' -type f -delete"

# Dirs
alias v2v="cd ~/Projects/v2v"
alias campainha="cd ~/Projects/campainha"
alias cataratas="cd ~/Projects/cataratas"
alias persisto="cd ~/Projects/persisto"

alias api="cd ~/Projects/v2v/vzon-api"
alias web="cd ~/Projects/v2v/vzon-web"
alias admin="cd ~/Projects/v2v/vzon-admin"

alias myip='export IP=`curl -s https://api.ipify.org`;echo $IP'

# TMUX
alias "tmls"="tmux ls"

function tmk() {
    tmux list-sessions | awk 'BEGIN{FS=":"}{print $1}' | xargs -n 1 tmux kill-session -t
}

# Stow
alias stow_priv="stow -t ${HOME} -d ~/.dotfiles_private"
