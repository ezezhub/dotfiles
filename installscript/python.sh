#!/bin/bash

# install python3
sudo apt-get install -y python3
sudo apt-get install -y python3-pip

packages=(
    robotframework-seleniumlibrary
)

pip3 install --upgrade "${packages[@]}"
