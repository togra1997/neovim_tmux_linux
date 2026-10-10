#!/bin/bash

# install neovim
brew install -y neovim git fzf ripgrep lazygit

# install LazyVim
# git clone https://github.com/LazyVim/starter ~/.config/nvim
# rm -rf ~/.config/nvim/.git
cp -r ~/neovim_tmux_linux/configs/nvim/ ~/.config

# update command
source ~/.zshrc
