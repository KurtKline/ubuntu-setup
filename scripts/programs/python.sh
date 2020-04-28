#!/bin/bash

VERSION="3.8"

echo "🐍 Installing Python"
sudo apt update
sudo apt install software-properties-common 
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install -y python$VERSION python3-pip python3-venv
