#!/bin/sh

# Create Vim directories
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged

#Create a .vimrc file in your home directory
touch ~/.vimrc

# Create a symbolic link for the Fish configuration
ln -sfn $DIR/vimrc ~~/.vimrc


echo "Vim configuration complete."
