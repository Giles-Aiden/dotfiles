#/usr/bin/env bash
alias config='/usr/bin/env git --git-dir=$HOME/.config/dotfiles/git --work-tree=$HOME'
curl -fLo /usr/share/nvim/runtime/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo npm install -g  \
  neovim \
  bash-language-server \
  dockerfile-language-server-nodejs \
  yaml-language-server \
  pyright \
  vls \
  typescript \
  typescript-language-server \
  vscode-css-languageserver-bin \
  vscode-html-languageserver-bin \
  vscode-json-languageserver

sudo pacman -S rustup
