curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
echo 'source ~/dotfiles/main.sh' >> ~/.zshrc
git clone https://github.com/anyenv/anyenv ~/.anyenv
zplug install