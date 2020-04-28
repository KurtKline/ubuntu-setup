#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

function apt_install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

function snap_install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1 --classic
  else
    echo "Already installed: ${1}"
  fi
}

# Only available with apt
apt_install curl
apt_install file
apt_install git
apt_install vim
apt_install chromium-browser

# Snap installs
snap_install htop
snap_install tree
snap_install pycharm-community
snap_install spotify
snap_install atom
