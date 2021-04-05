alias config='git --git-dir=$HOME/dotfiles --work-tree=$HOME'

alias vi='vim'
alias g='git'
alias ls='lsd'
alias ll='ls -l'
alias la='ll -a'

export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

starship init fish | source
