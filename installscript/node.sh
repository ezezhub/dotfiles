#!/bin/bash

# install Node
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm

packages=(
    http-server
    nodemon
)

npm install -g "${packages[@]}"
