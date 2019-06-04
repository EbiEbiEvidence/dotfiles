title() {
  echo -ne "\033]0;$@\007"
}


# ------------------------------------------------------------------------------
# A to Z
# ------------------------------------------------------------------------------

alias c='code'
alias c.='code .'
alias e='exec $SHELL -l'
alias o='open'
alias o.='open .'

# ------------------------------------------------------------------------------
# git
# ------------------------------------------------------------------------------

if type "hub" > /dev/null; then
  alias git=hub
fi

alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gf='git fetch'
alias gg='git grep'
alias gl='git log'
alias gm='git merge'
alias gp='git pull'
alias gr='git remote'
alias gs='git status'
alias gw='git whatchanged'
alias gpo='git push origin HEAD'
alias gpoh="gpo && hub browse"

# ------------------------------------------------------------------------------
# listing for macOS
# ------------------------------------------------------------------------------

if type "k" > /dev/null; then
  alias k='k -h'
  alias ka='k -A'
fi

alias ls="/bin/ls -hF1"
alias l="ls -lhF"
alias la="ls -lahF"
alias lsd="ls -lhF | grep --color=never '^d'"

# ------------------------------------------------------------------------------
# alias
# ------------------------------------------------------------------------------

alias untar="tar xvf"
alias dc=popd
alias more=less

if type "pipenv" > /dev/null; then
  alias ppython="pipenv run python"
  alias ppip=pipenv
fi

if type "nvim" > /dev/null; then
  alias vim=nvim
fi
