#!/bin/bash

# install java
sudo apt-get update
sudo apt-get install -y default-jdk
java --version

# install golang
cd /tmp
wget https://golang.org/dl/go1.15.linux-amd64.tar.gz
sudo tar -xvf go1.15.linux-amd65.tar.gz
sudo mv go /usr/local

# install python3
sudo apt-get install -y python3
sudo apt-get install -y python3-pip
