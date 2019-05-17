git clone https://github.com/EbiEbiEvidence/dotfiles ~/dotfiles
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
echo 'source ~/dotfiles/main.sh' >> ~/.zshrc
source ~/.zshrc
zplug install
git clone https://github.com/anyenv/anyenv ~/.anyenv
~/.anyenv/bin/anyenv init
anyenv install --init