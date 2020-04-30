#!/bin/bash

./symlink.sh
./aptinstall.sh
./snapinstall.sh
./programs.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc

# Set favorites in dock
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'pycharm-community_pycharm-community.desktop', 'code_code.desktop', 'atom_atom.desktop', 'chromium_chromium.desktop', 'spotify_spotify.desktop']"

echo "System setup complete. Now enjoy your ☕"
