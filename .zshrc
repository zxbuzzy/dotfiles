HISTSIZE=10000
SAVEHIST=10000
setopt autocd

export TERM="xterm-256color"
export EDITOR="vim"

alias ff="fastfetch"
alias hst="history 0"

# some aliases
alias mkdir="mkdir -p"
alias ll="ls -lhG"
alias tree="tree -L"
alias ping="ping -c 3"
alias rm="rm -i"

# git aliases
alias ginit="git init"
alias gadd="git add -A"
alias gcm="git commit -m"
alias gstat="git status"
alias glog="git log --oneline --all --graph"
alias gbr="git branch"
alias gsw="git switch"

alias lg="lazygit"

# Add cargo
. "$HOME/.cargo/env"

eval "$(starship init zsh)"
