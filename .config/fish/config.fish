# MacOS specific
/opt/homebrew/bin/brew shellenv | source

set fish_greeting

set TERM xterm-256color
set EDITOR nvim
set -g fish_key_bindings fish_vi_key_bindings

# set theme
fish_config theme choose "tokyonight-moon"

# some aliases
alias mkdir "mkdir -p"

# vim alias
alias vim "nvim"

# git aliases
alias ginit "git init"
alias gadd "git add -A"
alias gcm "git commit -m"
alias gstat "git status"
alias glog "git log --oneline --all --graph"
alias gbr "git branch"

# shell specific aliases
alias hst "history"
alias fishp "fish --private"

# docker aliases
alias dps "docker ps"
alias dpa "docker ps -a"
alias dex "docker exec -it"


# terraform specific aliases
alias tf="terraform"

# lazygit
alias lg="lazygit"

# cargo support
set PATH $PATH "$HOME/.cargo/bin/"

# starship
starship init fish | source
