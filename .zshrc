HISTSIZE=10000
SAVEHIST=10000
setopt autocd
bindkey -v

# proper colors
export TERM="xterm-256color"

# use nvim as a manpger and for everything else
export MANPAGER='nvim +Man!'
export EDITOR="nvim"
export VISUAL="nvim"

# some aliases
alias mkdir="mkdir -p"

# vim alias
alias vim="nvim"

# ll
alias ll="ls -lG"

# git aliases
alias ginit="git init"
alias gadd="git add -A"
alias gcm="git commit -m"
alias gstat="git status"
alias glog="git log --oneline --all --graph"
alias gbr="git branch"

# terraform specific aliases
alias tf="terraform"

alias lg="lazygit"

eval "$(starship init zsh)"

# Add cargo
. "$HOME/.cargo/env"
