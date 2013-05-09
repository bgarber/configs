#!/bin/bash

# Copyright   @2013  Bryan Garber da Silva

# Updating Bash configuration.
cat $HOME/.bashrc bash/dot.bashrc >> $HOME/.bashrc-new
rm $HOME/.bashrc
mv $HOME/.bashrc-new $HOME/.bashrc
source $HOME/.bashrc
echo "Bash configuration script updated."

# Installing Vim configuration files.
rm -rf $HOME/.vim $HOME/.vimrc
cp -r vim/dot.vim $HOME/.vim
cp vim/dot.vimrc $HOME/.vimrc
echo "Vim configuration updated."

# Installing Emacs configuration files.
rm -rf $HOME/.emacs
cp emacs/dot.emacs $HOME/.emacs
echo "Emacs configuration updated."

# Installing Screen configuration file
rm -rf $HOME/.screenrc
cp screen/dot.screenrc $HOME/.screenrc
echo "Screen configuration updated."

