function fzf-cd()
{
    cd "$(cygpath "$(FZF_DEFAULT_COMMAND="es /ad '$1' |  tr -d '\r' | tr '\n' '\0'" fzf --read0)")"
}
