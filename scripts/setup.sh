#!/bin/bash

./aptinstall.sh
./snapinstall.sh
./programs.sh
./symlink.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc
