function _ghq () {
    _arguments -C \
        '1:: :__ghq_commands' \
        '2:: :->args' \
        && return 0

    case $state in
        (args)
            case $line[1] in
                (look)
                    _repos=( ${(f)"$(ghq list --unique)":gs/:/\\:/} )
                    _describe Repositories _repos
                    ;;
            esac
    esac

    return 1
}

__ghq_commands () {
    _c=(
        ${(f)"$(ghq help | perl -nle 'print qq(${1}[$2]) if /^COMMANDS:/.../^\S/ and /^ (\w+)(?:, \w+)?\t+(.+)/')"}
    )

    _values Commands $_c
}

compdef _ghq ghq

function GL() {
    moveto=$(ghq root)/$(ghq list | fzf)
    if [[ $(ghq root)/ == ${moveto}  ]]
    then
        return
    fi
    cd $moveto

    # # rename session if in tmux
    # if [[ ! -z ${TMUX} ]]
    # then
    #     repo_name=${moveto##*/}
    #     tmux rename-session ${repo_name//./-}
    # fi
}

function GLC() {
    codeto=$(ghq root)/$(ghq list | fzf)
    if [[ $(ghq root)/ == ${codeto} ]]
    then
        return
    fi
    code $codeto
}

function GLX() {
    codeto=$(ghq root)/$(ghq list | fzf)
    if [[ $(ghq root)/ == ${codeto} ]]
    then
        return
    fi
    x $codeto
}

function GG() {
    ghq get $1
    cd $(ghq root)/$1
}
