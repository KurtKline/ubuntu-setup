#!/bin/bash

echo "Starting snap installs"

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1 --classic
  else
    echo "Already installed: ${1}"
  fi
}

install htop
install tree
install pycharm-community
install spotify
install atom
