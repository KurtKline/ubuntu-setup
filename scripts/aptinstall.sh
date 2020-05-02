#!/bin/bash

echo "Starting apt installs ⚙️"

sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

install curl
install git
install vim
install htop
install tree
install file

# Aesthetic
install gnome-tweaks
install chrome-gnome-shell
install gnome-shell-extensions
install figlet
install lolcat

