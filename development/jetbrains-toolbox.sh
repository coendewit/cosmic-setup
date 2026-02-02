#!/bin/bash
set -e

# Download JetBrains Toolbox
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-3.2.0.65851.tar.gz -O ~/Downloads/jetbrains-toolbox.tar.gz

# Create install folder
mkdir -p ~/opt

# Extract
tar -xzf ~/Downloads/jetbrains-toolbox.tar.gz -C ~/opt/

# Find the toolbox binary (works on Ubuntu/Pop!_OS)
TOOLBOX_BIN=$(find ~/opt -type f -name jetbrains-toolbox -perm /111 | head -n 1)

if [[ -z "$TOOLBOX_BIN" ]]; then
  echo "Error: Could not find the JetBrains Toolbox executable."
  exit 1
fi

# Run JetBrains Toolbox
"$TOOLBOX_BIN"
