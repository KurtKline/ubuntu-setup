#!/bin/bash

# Visual Studio Code
sudo snap install code --classic

function install {
  name="${1}"
  code --install-extension ${name} --force
}
install ms-python.python
install ms-vscode.Go
