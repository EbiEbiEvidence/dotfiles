autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Basic
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit load zdharma/history-search-multi-word

# fzf
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

# fzf-plugin
zinit light 'b4b4r07/emoji-cli'
zinit light 'mollifier/anyframe'

# enhancd
zinit light 'b4b4r07/enhancd'

# k
zinit ice pick'k.sh'
zinit light 'supercrabtree/k'

# docker
zinit ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"; zinit load docker/compose

# vim
zinit ice as"program" atclone"rm -f src/auto/config.cache; ./configure" atpull"%atclone" make pick"src/vim"
zinit light vim/vim

# LS_COLORS
zinit ice atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh" nocompile'!'
zinit light trapd00r/LS_COLORS

# oh-my-zsh
# - 作業ディレクトリに .env ファイルがあった場合に自動的にロードしてくれます。
zinit snippet 'OMZ::plugins/dotenv/dotenv.plugin.zsh'
# - コマンド入力待ち状態から control-Z で suspend したプロセスに復帰するキーバインドを設定するプラグインです。
zinit snippet 'OMZ::plugins/fancy-ctrl-z/fancy-ctrl-z.plugin.zsh'
# - Gitの補完と大量のエイリアスを定義するプラグインです。
# - エイリアスは重宝するものが多く、Gitを使うユーザーには必ずオススメしたいプラグインです。
zinit snippet 'OMZ::plugins/git/git.plugin.zsh'
# - GitHub のレポジトリを管理するためのコマンドを定義するプラグインです。
zinit snippet 'OMZ::plugins/github/github.plugin.zsh'
# - 非GNU系OSにインストールしたGNU系ツールをプリフィックスなしで使えるようにするプラグインです。
zinit snippet 'OMZ::plugins/gnu-utils/gnu-utils.plugin.zsh'
# - .zshrc を zcompile してロードしてくれる src コマンドを定義するプラグインです。
zinit snippet 'OMZ::plugins/zsh_reload/zsh_reload.plugin.zsh'


