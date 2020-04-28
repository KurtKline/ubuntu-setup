#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

function basic_install {
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
    sudo snap install $1
  else
    echo "Already installed: ${1}"
  fi
}

# Only available with apt
basic_install curl
basic_install file
basic_install git
basic_install vim

# Snap installs
snap_install pycharm-community
snap_install htop
snap_install tree
snap_install spotify
snap_install sublime-text
