#!/bin/bash

# install GNU stow
sudo apt-get update
sudo apt-get install -y stow

# install zsh
sudo apt-get install -y zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#stow all the dotfiles
files="zsh"

for file in ${files}; do
  echo "Stow $file to home directory"
  stow $file
done

echo "Completed"
