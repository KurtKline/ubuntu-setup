#!/bin/bash

./symlink.sh
./aptinstall.sh
./snapinstall.sh
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc

# Set-up complete
figlet "Setup complete!" | lolcat

# Restart Gnome shell, so that extensions can be shown
function sleep_countdown() {
	i=$@
	while [ $i -gt 0 ]; do
		echo "Restarting shell in $i seconds"
		sleep 1
		let i=i-1
	done
}

sleep_countdown 5

# killall -1 gnome-shell
