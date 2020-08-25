#!/bin/bash

# install GNU stow
sudo apt-get update
sudo apt-get install -y stow
sudo apt-get install -y vim 

# install zsh
sudo apt-get install -y zsh
chsh -s /usr/bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo rm ~/.zshrc

# install other relevant packages
packages="go java node"

for package in ${packages}; do
  echo "Installing $package environment"
  sudo ./installscript/$package.sh
done

#stow all the dotfiles
files="zsh git p10k font vim"

for file in ${files}; do
  echo "Stow $file to home directory"
  stow $file
done

# running desktop.sh

sudo ./installscript/desktop.sh

echo "Completed"
