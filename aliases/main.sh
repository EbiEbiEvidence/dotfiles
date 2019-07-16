title() {
  echo -ne "\033]0;$@\007"
}


# ------------------------------------------------------------------------------
# A to Z
# ------------------------------------------------------------------------------

alias c='code'
alias c.='code .'
alias ca='carthage'
alias e='exec $SHELL -l'
alias o='open'
alias o.='open .'
t () {
	tmux attach -t $1 2> /dev/null || tmux new -s $1 2> /dev/null || tmux ls
}
_t() { _values 'sessions' "${(@f)$(tmux ls -F '#S' 2>/dev/null )}" }
compdef _t t
alias w="curl 'wttr.in/?A&lang=ja'"
alias x='/Applications/Xcode.app/Contents/MacOS/Xcode'
alias x.='x .'

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

