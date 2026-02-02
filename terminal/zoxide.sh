#!/bin/bash

echo "=== Install and configure Zoxide ==="

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
source "$SCRIPT_DIR/../helper_functions.sh"

install_if_not_found zoxide
install_if_not_found fzf
