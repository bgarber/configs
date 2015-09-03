#!/bin/bash

# Copyright   @2013  Bryan Garber da Silva

# Updating Bash configuration.
cat $HOME/.bashrc bash/dot.bashrc >> $HOME/.bashrc-new
rm $HOME/.bashrc
mv $HOME/.bashrc-new $HOME/.bashrc
echo "Bash configuration script updated."

# Installing Vim configuration files.
rm -rf $HOME/.vim $HOME/.vimrc
cp -r vim/dot.vim $HOME/.vim
cp vim/dot.vimrc $HOME/.vimrc
echo "Vim configuration updated."

# Installing Emacs configuration files.
rm $HOME/.emacs
cp emacs/dot.emacs $HOME/.emacs
echo "Emacs configuration updated."

# Installing Screen configuration file
rm $HOME/.screenrc
cp screen/dot.screenrc $HOME/.screenrc
echo "Screen configuration updated."

# Installing TMux configuration file
rm $HOME/.tmux.conf
cp tmux/dot.tmux.conf $HOME/.tmux.conf
echo "TMux configuration updated."

# Installing ZSH and Oh-My-ZSH configs
rm $HOME/.zshrc $HOME/.zshenv $HOME/.zfunctions
cp zsh/dot.zshrc $HOME/.zshrc
cp zsh/dot.zshevn $HOME/.zshenv
cp zsh/dot.zfunctions $HOME/.zfunctions
if [ -d $HOME/.oh-my-zsh ]; then
    cp zsh/*.zsh-theme $HOME/.oh-my-zsh/themes/

