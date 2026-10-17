#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/setup_common.sh"

echo "🚀 Setup started..."

# Run common setup functions
install_tools
install_claude_code
setup_nvim

# Reload environment
source ~/.zshrc

log_done
