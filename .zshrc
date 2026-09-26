[[ -o interactive ]] || return

export EDITOR=vim VISUAL=vim PAGER=less

# Homebrew, Rust, kubectl plugins
[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
[[ -r "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

typeset -U path fpath
path=("${KREW_ROOT:-$HOME/.krew}/bin" $path)
[[ -n ${HOMEBREW_PREFIX-} ]] &&
  fpath=("$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath)

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
setopt INC_APPEND_HISTORY HIST_IGNORE_DUPS INTERACTIVE_COMMENTS
unsetopt SHARE_HISTORY

# Completion and familiar Ctrl-key editing
autoload -Uz compinit
compinit
bindkey -e
bindkey '^R' history-incremental-search-backward

# Show exit status when a command fails
PROMPT='%(?..%F{red}[%?]%f )%F{green}%n@%m%f:%F{blue}%~%f %# '

alias ll='ls -lhG'
alias mkd='mkdir -p'
alias t2='tree -L 2'
alias p3='ping -c 3'
alias rmi='rm -i'
alias cl='clear'

alias ginit='git init'
alias gadd='git add -A'
alias gcm='git commit -m'
alias gstat='git status'
alias glog='git log --oneline --all --graph'
alias gbr='git branch'
alias gsw='git switch'
alias lg='lazygit'

alias dps='docker ps'
alias dpa='docker ps -a'
alias dex='docker exec -it'
alias dim='docker images'
alias dl='docker logs -f'
alias drmi='docker rmi'

alias k='kubectl'
alias s='kitten ssh'

# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
    eval "$(fnm env --shell zsh)"
fi

eval "$(starship init zsh)"
