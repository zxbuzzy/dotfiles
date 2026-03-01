# MacOS specific
/opt/homebrew/bin/brew shellenv | source

set fish_greeting

set TERM xterm-256color
set EDITOR nvim
set -x MANPAGER "nvim +Man!"
set -g fish_key_bindings fish_vi_key_bindings

# set theme
fish_config theme choose "tokyonight-moon"

# regular
abbr mkdir "mkdir -p"
abbr cl "clear"
abbr tree "tree -L"

# vim
abbr vim "nvim"

# git
abbr ginit "git init"
abbr gadd "git add -A"
abbr gcm "git commit -m"
abbr gstat "git status"
abbr glog "git log --oneline --all --graph"
abbr gbr "git branch"
abbr gsw "git switch"

# shell
abbr hst "history"
abbr fishp "fish --private"

# docker
abbr dps "docker ps"
abbr dpa "docker ps -a"
abbr dex "docker exec -it"
abbr dim "docker images"
abbr dl "docker logs -f"


# terraform
abbr tf "terraform"

# lazygit
abbr lg "lazygit"

# cargo support
set PATH $PATH "$HOME/.cargo/bin/"

# starship
starship init fish | source
