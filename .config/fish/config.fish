# Export
set fish_greeting
set TERM xterm-256color
set EDITOR nvim
set HISTORY_IGNORE "(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

# Functions
function fish_user_key_bindings
    fish_vi_key_bindings
end

# pyenv
pyenv init - fish | source

# Aliases
alias v="nvim"
alias lsall="ls -alh"
alias df="df -h"
alias sn="shutdown now"
alias zr="zathura"
alias news="newsboat"
alias ff="fastfetch"
alias notes="cd $HOME/Documents/notes"
alias books="cd $HOME/Documents/books"

# A bit of care
alias rm="rm -i"

# Git aliases
alias addall="git add ."
alias commit="git commit -m"
alias push="git push origin"

# add starhsip
starship init fish | source
