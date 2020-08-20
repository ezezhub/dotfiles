#!/bin/bash

# install GNU stow
sudo apt-get update
sudo apt-get install -y stow

#stow all the dotfiles
files="zsh"

for file in ${files}; do
  echo "Stow $file to home directory"
  stow $file
done

echo "Completed"
