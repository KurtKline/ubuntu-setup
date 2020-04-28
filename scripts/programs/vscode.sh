#!/bin/bash

# Visual Studio Code
sudo apt update
sudo apt install -y code

function install {
  name="${1}"
  code --install-extension ${name} --force
}
install ms-python.python
install ms-vscode.Go
