#!/bin/bash

set -e

echo "=== Cosmic Developer Bootstrap ==="

# ----------------------------
# Update system
# ----------------------------
echo "=== Update system ==="
sudo apt update

# ----------------------------
# Install desktop
# ----------------------------
for script in ./desktop/*.sh; do
  source "$script"
done

# ----------------------------
# Install all terminal apps
# ----------------------------
for script in ./terminal/*.sh; do
  source "$script"
done

# ----------------------------
# Install development requirements
# ----------------------------
for script in ./development/*.sh; do
  source "$script"
done

# ----------------------------
# Install bash scripts
# ----------------------------
source ./install_scripts.sh

# ----------------------------
# Finish
# ----------------------------
echo "=== Bootstrap complete! ==="
echo "Restart to apply changes"

read -p "Press enter to reboot"
reboot
