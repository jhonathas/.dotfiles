if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export PATH="$PATH:$HOME/bin"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export PATH="$PATH:/bin"
    export PATH="$PATH:/sbin"
    export PATH="$PATH:/usr/bin"
    export PATH="$PATH:/usr/sbin"
    export PATH="$PATH:/usr/local/bin"
    export PATH="$PATH:$HOME/bin"
    export PATH=~/Library/Python/3.6/bin:$PATH
fi
