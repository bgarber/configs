#!/bin/bash

# Copyright   @2013  Bryan Garber da Silva

# Updating Bash configuration.
cat $HOME/.bashrc bash/dot.bashrc >> $HOME/.bashrc
echo "Bash script updated. You will need to restart the terminal for the \
changes to take effect."

# Installing Vim configuration files.
rm -rf $HOME/.vim $HOME/.vimrc
cp -r vim/dot.vim $HOME/.vim
cp vim/dot.vimrc $HOME/.vimrc
echo "Vim configuration updated."

# Installing Screen configuration file
rm -rf $HOME/.screenrc
cp screen/dot.screenrc $HOME/.screenrc
echo "Screen configuration updated."

