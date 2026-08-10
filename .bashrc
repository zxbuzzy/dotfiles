# if not running interactively, don't do anything
[[ -n $PS1 ]] || return

# PS1="\[\033[01;32m\]\u@\h\[\033[00m\] \$ "
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ "

export EDITOR='vim'
export HISTSIZE=10000
export HISTFILESIZE=10000
export LSCOLORS='ExGxbEaECxxEhEhBaDaCaD'
export PAGER='less'
export VISUAL='vim'

shopt -s cdspell
shopt -s dirspell

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

# docker
alias dps="docker ps"
alias dpa="docker ps -a"
alias dex="docker exec -it"
alias dim="docker images"
alias dl="docker logs -f"

alias lg="lazygit"

# kitty
alias s="kitten ssh"

# Add cargo
. "$HOME/.cargo/env"

# add pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# add nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="/opt/homebrew/bin:$PATH"

eval "$(pyenv init - bash)"
