#!/bin/bash

VERSION="1.14.2"

source .bashrc
wget https://dl.google.com/go/go$VERSION.linux-amd64.tar.gz
tar xvfz go$VERSION.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo mv go /usr/local/

rm go$VERSION.linux-amd64.tar.gz
