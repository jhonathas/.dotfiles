# reload source
reload() {
  source ~/.zshrc;
}

function os() {
  qlmanage -p "`ls -lrt -d -1 $PWD/tmp/test/{*,} | tail -n1`" &>/dev/null
}

see() {
  qlmanage -p "$@" &>/dev/null
}

latest() {
    if [[ "$1" != '' ]]; then
        echo "$1$(ls -rt $1 | tail -n1)"
    else
        echo "$(ls -rt | tail -n1)"
    fi
}

abs_path() {
    if [[ "$1" != '' ]]; then
        echo "$(pwd)/$1"
    else
        local stdin
        stdin=$(cat)
        echo "$(pwd)/$stdin"
    fi
}

gfp() {
  git checkout develop
  git pull --rebase
  git checkout master
  git pull --rebase
}
