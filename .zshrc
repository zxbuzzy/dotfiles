HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

alias v="nvim"
alias zr="zathura"

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init zsh)"
