#!/bin/bash

source helper_functions.sh

mkdir -p ~/.local/bin
for script in ./bin/*.sh; do
  create_symlink "$script" ~/.local/bin
  sudo chmod +x ~/.local/bin/$(basename "$script")
done
