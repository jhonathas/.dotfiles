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
