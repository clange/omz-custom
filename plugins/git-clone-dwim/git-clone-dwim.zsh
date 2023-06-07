function git-clone-dwim()
{
    url="$1"
    if [[ $url == https://github.com/*/* ]]
    then
        domain=github.com
        rest="${url%/*}"
        organization="${rest##*/}"
        dir="$HOME/git/$domain/$organization"
        mkdir -p "$dir"
        cd "$dir"
    fi
    git clone "$url"
}
