#!/bin/bash

echo "=== Install and configure bash ==="

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
source "$SCRIPT_DIR/../helper_functions.sh"

create_symlink "$SCRIPT_DIR/bash/.bashrc" ~/.bashrc
