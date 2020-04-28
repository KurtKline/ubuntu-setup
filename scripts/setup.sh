#!/bin/bash

./symlink.sh
./aptinstall.sh
./snapinstall.sh
./programs.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc
