# My zsh config.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Customize prompt
PS1="%n@%m %1~: "
setopt autocd

# PATH
PATH="/usr/bin:$PATH"

# Basic zsh setup
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# Export
export TERM="xterm-256color"
export EDITOR="nvim"
export MANPAGER="nvim +Man!"
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

# Aliases
alias v="nvim"
alias lsall="ls -alh"
alias df="df -h"
alias sn="shutdown now"
alias updzshconf="source ${HOME}/.zshrc"
alias k="kubectl"

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
alias status="git status"
alias pull="git pull -r"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for CLI.
if [ -f '/home/zxbuzzy/yandex-cloud/path.bash.inc' ]; then source '/home/zxbuzzy/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/home/zxbuzzy/yandex-cloud/completion.zsh.inc' ]; then source '/home/zxbuzzy/yandex-cloud/completion.zsh.inc'; fi

