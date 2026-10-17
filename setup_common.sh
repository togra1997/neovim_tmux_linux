#!/bin/bash

log_step() {
  echo "🚀 $1..."
}

log_ok() {
  echo "✓ $1"
}

log_done() {
  echo "✅ Setup completed!"
}

install_tools() {
  echo "📥 Installing tools (neovim, git, fzf, ripgrep, lazygit)..."
  brew install -y neovim git fzf ripgrep lazygit
}

install_claude_code() {
  echo "🤖 Installing Claude Code..."
  curl -fsSL https://claude.ai/install.sh | bash
}

setup_nvim() {
  echo "⚙️  Setting up neovim config..."
  mkdir -p ~/.config
  rm -rf ~/.config/nvim
  cp -r ~/neovim_tmux_linux/configs/nvim ~/.config/
}
