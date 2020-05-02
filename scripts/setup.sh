#!/bin/bash

SECONDS=0

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

# Timing for set-up process
if (( $SECONDS > 3600 )) ; then
    let "hours=SECONDS/3600"
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "Set-up completed in $hours hour(s), $minutes minute(s) and $seconds second(s)" 
elif (( $SECONDS > 60 )) ; then
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "Set-up completed in $minutes minute(s) and $seconds second(s)"
else
    echo "Set-up completed in $SECONDS seconds"
fi
