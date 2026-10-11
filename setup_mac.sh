#!/bin/bash

# install neovim
brew install -y neovim git fzf ripgrep lazygit

curl -fsSL https://claude.ai/install.sh | bash
# install LazyVim
# git clone https://github.com/LazyVim/starter ~/.config/nvim
# rm -rf ~/.config/nvim/.git
cp -r ~/neovim_tmux_linux/configs/nvim ~/.config/nvim

# update command
source ~/.zshrc
