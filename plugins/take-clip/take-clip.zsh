function take-clip()
{
    take "$1"
    cygpath -w "$PWD" | tr -d '\n' | clipcopy
}
