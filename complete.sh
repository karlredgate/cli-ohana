
function __akamai__() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local prev="${COMP_WORDS[COMP_CWORD-1]}"
    local cword=$COMP_CWORD
    local commands=$( jq -r .commands[].name ~/.akamai-cli/src/*/cli.json )

    COMPREPLY=()

    case $cword in
    1)
        COMPREPLY=( $(compgen -W "$commands" -- "$cur") )
        ;;
    esac
}

# vim: autoindent expandtab sw=4
