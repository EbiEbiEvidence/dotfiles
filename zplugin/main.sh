source ~/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# Basic
zplugin light zsh-users/zsh-completions
zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
zplugin load zdharma/history-search-multi-word

# tips
zplugin light 'djui/alias-tips'

# fzf
zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin

# fzf-plugin
zplugin light 'b4b4r07/emoji-cli'
zplugin light 'mollifier/anyframe'

# k
zplugin ice pick'k.sh'
zplugin light 'supercrabtree/k'
alias ls=k

# docker
zplugin ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"; zplugin load docker/compose

# vim
zplugin ice as"program" atclone"rm -f src/auto/config.cache; ./configure" atpull"%atclone" make pick"src/vim"
zplugin light vim/vim

# pure
zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure

# LS_COLORS
zplugin ice atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh" nocompile'!'
zplugin light trapd00r/LS_COLORS

# oh-my-zsh
# - 作業ディレクトリに .env ファイルがあった場合に自動的にロードしてくれます。
zplugin snippet 'OMZ::plugins/dotenv/dotenv.plugin.zsh'
# - コマンド入力待ち状態から control-Z で suspend したプロセスに復帰するキーバインドを設定するプラグインです。
zplugin snippet 'OMZ::plugins/fancy-ctrl-z/fancy-ctrl-z.plugin.zsh'
# - Gitの補完と大量のエイリアスを定義するプラグインです。
# - エイリアスは重宝するものが多く、Gitを使うユーザーには必ずオススメしたいプラグインです。
zplugin snippet 'OMZ::plugins/git/git.plugin.zsh'
# - GitHub のレポジトリを管理するためのコマンドを定義するプラグインです。
zplugin snippet 'OMZ::plugins/github/github.plugin.zsh'
# - 非GNU系OSにインストールしたGNU系ツールをプリフィックスなしで使えるようにするプラグインです。
zplugin snippet 'OMZ::plugins/gnu-utils/gnu-utils.plugin.zsh'
# - .zshrc を zcompile してロードしてくれる src コマンドを定義するプラグインです。
zplugin snippet 'OMZ::plugins/zsh_reload/zsh_reload.plugin.zsh'


