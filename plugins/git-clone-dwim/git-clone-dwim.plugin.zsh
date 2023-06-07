function git-clone-dwim()
{
    url="$1"
    if [[ $url =~ https://(github\.com|gitlab\.com)/(.+)/[^/]+ ]]
    then
        domain="${match[1]}"
        organization="${match[2]}"
        dir="$HOME/git/$domain/$organization"
        mkdir -p "$dir"
        cd "$dir"
    fi
    git clone "$url"
}
