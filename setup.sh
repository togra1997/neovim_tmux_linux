#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/setup_common.sh"

echo "🚀 Setup started..."

# Homebrew install
if ! command -v brew &>/dev/null; then
  echo "📦 Installing Homebrew..."
  NONINTERACTIVE=1 CI=true /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.bashrc
else
  log_ok "Homebrew already installed"
fi

# Setup environment
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Run common setup functions
install_tools
install_claude_code
setup_nvim

# Reload environment
source ~/.bashrc

log_done
