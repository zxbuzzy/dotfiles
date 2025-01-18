# My zsh config.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Customize prompt
PS1="%n@%m %1~: "
setopt autocd

# Exports
export TERM="xterm-256color"
export EDITOR="nvim"
export MANPAGER="nvim +Man!"
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

# Aliases
alias nv="nvim"
alias lsall="ls -alh"
alias df="df -h"
alias updzshconf="source ${HOME}/.zshrc"

# Vi mode
bindkey -v

# A bit of care
alias rm="rm -i"

# Basic autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Git aliases
alias addall="git add ."
alias commit="git commit -m"
alias push="git push origin"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  
