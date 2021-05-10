alias config='git --git-dir=$HOME/.config/dotfiles/git --work-tree=$HOME'

alias nv='nvim'
alias vim='nv'
alias vi='vim'
alias g='git'
alias ls='lsd'
alias ll='ls -l'
alias la='ll -a'

alias chia='sh \
            cd ~/Code/chia-blockchain \
            . ./activate \
            chia'

export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

starship init fish | source
