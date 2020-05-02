#!/bin/bash

./symlink.sh
./aptinstall.sh
./snapinstall.sh
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt upgrade -y

# Set-up complete
figlet "Setup complete!" | lolcat

# Restart Gnome shell
./rebootshell.sh

# See our bash changes
source ~/.bashrc
