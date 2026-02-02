#!/bin/bash

echo "=== Neovim installation and configuration ==="

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

source "$SCRIPT_DIR/../helper_functions.sh"

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage

sudo mkdir -p ~/.local/bin
sudo mv nvim-linux-x86_64.appimage ~/.local/bin/nvim
chmod u+x ~/.local/bin/nvim

if [[ ! -f ~/.config/nvim/lazyvim.json ]]; then
  rm -rf ~/.config/nvim
  git clone https://github.com/LazyVim/starter ~/.config/nvim

  rm -rf ~/.config/nvim/.git
fi

create_symlink "$SCRIPT_DIR/neovim/keymaps.lua" ~/.config/nvim/lua/config/keymaps.lua
create_symlink "$SCRIPT_DIR/neovim/supermaven.lua" ~/.config/nvim/lua/plugins/supermaven.lua
create_symlink "$SCRIPT_DIR/neovim/easy-dotnet.lua" ~/.config/nvim/lua/plugins/easy-dotnet.lua

