set fish_greeting

set TERM xterm-256color
set EDITOR vim
set -g fish_key_bindings fish_vi_key_bindings

# regular
abbr mkdir "mkdir -p"
abbr cl "clear"
abbr tree "tree -L"
abbr ping "ping -c 3"
abbr v "nvim"
abbr ff "fastfetch"

# set theme
fish_config theme choose catppuccin-mocha

# git
abbr ginit "git init"
abbr gadd "git add -A"
abbr gcm "git commit -m"
abbr gstat "git status"
abbr glog "git log --oneline --all --graph"
abbr gbr "git branch"
abbr gsw "git switch"

# some rusty things
abbr cat "bat"
alias ls "eza --icons -alh --group-directories-first"
abbr yz "yazi"

# htop -> btop
alias htop "btop"

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

# self-care
abbr rm "rm -i"

# cargo support
set PATH $PATH "$HOME/.cargo/bin/"
set -gx PATH ~/.local/bin $PATH

# starship
starship init fish | source
