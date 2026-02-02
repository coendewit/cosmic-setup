#!/bin/bash

echo "=== Install and configure .NET ==="

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
source "$SCRIPT_DIR/../helper_functions.sh"

sudo add-apt-repository ppa:dotnet/backports
sudo apt update

install_if_not_found dotnet-sdk-8.0
install_if_not_found dotnet-sdk-9.0
install_if_not_found dotnet-sdk-10.0
