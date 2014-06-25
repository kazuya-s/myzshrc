# -----------------------------------------------------------------------------
# General
# -----------------------------------------------------------------------------
# JAVA HOME
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# -----------------------------------------------------------------------------
# zsh
# -----------------------------------------------------------------------------
# 一般
setopt nobeep  # Beep音を鳴らさない
setopt prompt_subst # 色を使う
setopt ignoreeof # ^Dでログアウトしない。
setopt hist_ignore_dups # 直前と同じコマンドをヒストリに追加しない
setopt notify # バックグラウンドジョブが終了したらすぐに知らせる。

# Deleteキーを有効にする
bindkey -e
bindkey "^?"    backward-delete-char
bindkey "^H"    backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

# 補完
autoload -U compinit; compinit  # 補完機能の強化
setopt correct # コマンド名が間違っていたら、候補を出す

# フォルダ移動
unsetopt auto_menu # タブによるファイルの順番切り替えをしない
setopt auto_pushd  # cd -[tab]で過去のディレクトリにひとっ飛びできるようにする
setopt auto_cd # ディレクトリ名を入力するだけでcdできるようにする

# -----------------------------------------------------------------------------
# iTerm2
# -----------------------------------------------------------------------------
# title：タブ名を変更する
function title {
	echo -ne "\033]0;"$*"\007"
}

