function git-clone-dwim()
{
    setopt local_options re_match_pcre
    url="$1"
    if [[ $url =~ https://(github\.com|gitlab\.com|(?:git(?:lab)?\.)[^.]+\.[^.]+)/(.+)/([^/]+) ]]
    then
        # TODO strip git. or gitlab. subdomains
        domain="${match[1]}"
        organization="${match[2]}"
        repository="${match[3]}"
        dir="$HOME/git/$domain/$organization"
        mkdir -p "$dir"
        cd "$dir"
    fi
    git clone "$url"
    cd "$repository"
}
