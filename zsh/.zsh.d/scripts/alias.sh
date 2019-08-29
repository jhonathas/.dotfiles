# Shell

alias ll="ls -Glahs"
alias ls="/bin/ls -G"
alias psgrep="ps aux | egrep -v egrep | egrep"
alias internal_ip="ipconfig getifaddr en0"
alias myip='export IP=`curl -s https://api.ipify.org`;echo $IP'

# GIT

alias gs="git status"
alias gp="git push"
alias gf="git fetch origin -p"
alias gl="git log --graph"
alias gpr="git pull --rebase"
alias gffs="git flow feature start "
alias gffp="git flow feature publish "
alias gfff="git flow feature finish "
alias gfft="git flow feature track"

alias vimedit="cd ~/.vim.d; mvim"

# Elixir

alias mt="mix test"
alias mps="mix phx.server"
alias iexm="iex -S mix"

# Ember

alias es="ember server"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias ga="gitk --all"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    alias ga="gitx --all"
    # alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
    # alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
    # alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
fi
