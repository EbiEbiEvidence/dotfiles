export LANG=ja_JP.UTF-8
autoload -U compinit
compinit -u

setopt prompt_subst

export CLICOLOR=1

# ------------------------------------------------------------------------------
# history
# ------------------------------------------------------------------------------
export SAVEHIST=100000000
export HISTSIZE=100000000
export HISTFILE=${HOME}/.zhistory

# Do not enter command lines into the history list if they are duplicates of the previous event.
setopt hist_ignore_dups

# This option both imports new commands from the history file, and also causes your typed commands to be appended to the history file
setopt share_history

# If a new command line being added to the history list duplicates an older one, the older command is removed from the list (even if it is not the previous event).
setopt hist_ignore_all_dups

# Remove command lines from the history list when the first character on the line is a space, or when one of the expanded aliases contains a leading space.
setopt hist_ignore_space

# Whenever the user enters a line with history expansion, don’t execute the line directly; instead, perform history expansion and reload the line into the editing buffer.
setopt hist_verify

# Remove superfluous blanks from each command line being added to the history list.
setopt hist_reduce_blanks

# When writing out the history file, older commands that duplicate newer ones are omitted.
setopt hist_save_no_dups

# Remove the history (fc -l) command from the history list when invoked.
setopt hist_no_store

# BANG_HIST
setopt hist_expand

# This option works like APPEND_HISTORY except that new history lines are added to the $HISTFILE incrementally (as soon as they are entered), rather than waiting until the shell exits.
setopt inc_append_history

# All unquoted arguments of the form ‘anything=expression’ appearing after the command name have filename expansion (that is, where expression has a leading ‘~’ or ‘=’) performed on expression as if it were a parameter assignment. 
setopt magic_equal_subst

# If a command is issued that can’t be executed as a normal command, and the command is the name of a directory, perform the cd command to that directory. 
setopt auto_cd

# Make cd push the old directory onto the directory stack.
setopt auto_pushd

# Don’t push multiple copies of the same directory onto the directory stack.
setopt pushd_ignore_dups

autoload -U colors
colors
export LSCOLORS=gxfxcxdxbxegedabagacad

bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

source $HOME/dotfiles/aliases/main.sh
source $HOME/dotfiles/anyenv/main.sh
source $HOME/dotfiles/vim/main.sh
source $HOME/dotfiles/zplugin/main.sh
source $HOME/dotfiles/ghq/main.sh
source $HOME/dotfiles/term/main.sh
source $HOME/dotfiles/iterm/main.sh

autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ title `basename \`pwd\``; }
