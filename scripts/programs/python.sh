#!/bin/bash

echo "🐍 Installing Python"
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install -y python3.8 python3-pip python3-venv