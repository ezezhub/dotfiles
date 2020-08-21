#!/bin/bash

GO_VERSION="1.15"

OS="$(uname -s)"
ARCH="$(uname -m)"

# install golang
case $OS in
    "Linux")
        case $ARCH in
        "x86_64")
            ARCH=amd64
            ;;
        "aarch64")
            ARCH=arm64
            ;;
        "armv6")
            ARCH=armv6l
            ;;
        "armv8")
            ARCH=arm64
            ;;
        .*386.*)
            ARCH=386
            ;;
        esac
        PLATFORM="linux-$ARCH"
    ;;
    "Darwin")
        PLATFORM="darwin-amd64"
    ;;
esac

PACKAGE_NAME="go$GO_VERSION.$PLATFORM.tar.gz"

wget https://golang.org/dl/PACKAGE_NAME -o /tmp/go.tar.gz
tar -xvf /tmp/gp.tar.gz 
sudo mv /tmp/go /usr/local