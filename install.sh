# clone it
git clone https://github.com/EbiEbiEvidence/dotfiles ~/dotfiles

# zinit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# source it
echo 'source ~/dotfiles/main.sh' >> ~/.zshrc

# read it
source ~/.zshrc

# anyenv
git clone https://github.com/anyenv/anyenv ~/.anyenv
~/.anyenv/bin/anyenv init
anyenv install --init