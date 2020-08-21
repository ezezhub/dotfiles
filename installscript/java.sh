#!/bin/bash

# install java
sudo apt-get update
sudo apt-get install -y default-jdk
java -version

# install IntelliJ
VERSION="2020.2"
wget -O /opt/intellij.tar.gz http://download.jetbrains.com/idea/ideaIC-$VERSION.tar.gz
tar xvzf /opt/intellij.tar.gz
sudo mv /opt/idea-IC-202.6397.94 /opt/idea
./opt/idea/bin/idea.sh