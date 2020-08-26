#!/bin/bash

# install GNU stow
sudo apt-get update
sudo apt-get install -y stow

# install vim and zsh
sudo apt-get install -y vim 
sudo apt-get install -y zsh

# change the default shell to zsh
chsh -s /usr/bin/zsh

# download oh-my-zsh and powerlevel10k
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

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

