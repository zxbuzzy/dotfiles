[[ -o interactive ]] || return

export EDITOR=vim VISUAL=vim PAGER=less

# Some QoL functions
function hst() {
    if [ -z "$*" ]; then
        history 1
    else
        history 1 | rg "$@"
    fi
}

# History: save incrementally without mixing open terminals
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# Completion and familiar Ctrl-key editing
autoload -Uz compinit
compinit
bindkey '^R' history-incremental-search-backward

alias reload='source ~/.zshrc'
alias ll='ls -lhG'
alias mkd='mkdir -p'
alias t2='tree -L 2'
alias p3='ping -c 3'
alias rmi='rm -i'
alias cl='clear'
alias oc='opencode'

alias ginit='git init'
alias gadd='git add -A'
alias gcm='git commit -m'
alias gstat='git status'
alias glog='git log --oneline --all --graph'
alias gbr='git branch'
alias gsw='git switch'
alias gp='git push origin HEAD'
alias gpu="git pull origin"
alias gr='git remote'
alias gclone='git clone'
alias lg='lazygit'

alias dps='docker ps'
alias dpa='docker ps -a'
alias dex='docker exec -it'
alias dim='docker images'
alias dl='docker logs -f'
alias drmi='docker rmi'

alias k='kubectl'
alias kap='kubectl apply -f'
alias kg='kubectl get'
alias kl='kubectl logs'
alias s='kitten ssh'

# Rust
[[ -r "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
    eval "$(fnm env --shell zsh)"
fi

eval "$(starship init zsh)"
