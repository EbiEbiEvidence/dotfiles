if  [[ ! -a $HOME/.zplug/init.zsh ]]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

source $HOME/.zplug/init.zsh

zplug 'peterhurford/git-it-on.zsh'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-autosuggestions'
zplug 'plugins/git', from:oh-my-zsh
zplug 'rupa/z', use:'*.sh'
zplug 'b4b4r07/enhancd', use:init.sh
zplug 'tcnksm/docker-alias', use:zshrc
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'mrowa44/emojify', as:command
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme, defer:3
zplug 'junegunn/fzf-bin', as:command, from:gh-r, rename-to:fzf
zplug 'junegunn/fzf', as:command, use:bin/fzf-tmux
zplug 'supercrabtree/k', use:'!*'
zplug 'stedolan/jq', from:gh-r, as:command, rename-to:jq, use:'!*'
zplug 'motemen/ghq', use:'zsh/_ghq', as:command, use:'!*'
zplug load
setopt nonomatch