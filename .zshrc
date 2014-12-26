# 補完
autoload -U compinit
compinit
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 保管候補を矢印で選択
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history

# 区切り文字変更
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

# enbaled color
autoload -U colors
colors

# プロンプト
RPROMPT="[%m${WINDOW:+.$WINDOW}:%3~]"
PROMPT='%# '

#履歴
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups
setopt share_history
setopt auto_pushd
setopt pushd_ignore_dups

#履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#ディレクトリ移動
setopt auto_cd
setopt auto_pushd

setopt nolistbeep

#キーバインド
bindkey "^G" forward-word
bindkey -e
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

#色付き表示
alias ls='ls -vFG'
#LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:ex=01;32:*.tar=01;31'
#export LS_COLORS
alias dircl='eval `dircolors -b ~/.dir_colors`'
zmodload -i zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

export EDITOR="vim"

# PATH
export PATH=/usr/local/bin:$PATH:$HOME/bin

# Xvfb
export DISPLAY="localhost:1.0"
/usr/bin/Xvfb :1 -screen 0 1024x768x8 &

# rvm
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# rbenv
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
PATH="$PATH:$HOME/.gem"
alias gem_install="gem install --user-install"

#alias
alias be="bundle exec"
alias bi="bundle install"
alias spec="be rspec -cfs"
alias rails="be rails"
alias rake="be rake"
alias re="rbenv"

#function
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

#alias -g
alias -g @less="| less"
alias -g @modulus="-modulus -noout"
alias -g @cp932="-c ':e ++enc=cp932'"
alias -g @der="-inform der"
alias -g @x509="openssl x509 -in"
alias -g @rsa="openssl rsa -in"

# SSL
export SSL_CERT_FILE=/usr/lib/ssl/certs/ca-certificates.crt

# Linux SSH
LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
