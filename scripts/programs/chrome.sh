#!/bin/bash

echo "Installing Chrome" # Because chrome-gnome-shell to install new extensions did not work with chromium

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
