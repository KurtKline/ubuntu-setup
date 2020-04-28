#!/bin/bash

echo "📦 Installing Vundle"

# Vundle plugin manager
mkdir -p $HOME/.vim/bundle
cd $HOME/.vim/bundle
git clone git://github.com/VundleVim/Vundle.vim.git
vim +PluginInstall +qall
