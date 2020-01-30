#!/bin/bash

echo "Installing bash settings..."
cp bashrc ~/.bashrc
cp bash_profile ~/.bash_profile
echo "Bash settings installed!"

echo "Installing vim settings..."
cp vimrc ~/.vimrc
echo "Vim settings installed!"

echo "Install git settings"
cp gitignore ~/.gitignore
cp gitconfig ~/.gitconfig
echo "Git settings installed!"

echo "Installing spacemacs..."
if [ -d ~/.emacs.d ]
then
  echo "~/.emacs.d directory already exists, skipping installation..."
  echo "copying spacemacs config file..."
  cp spacemacs ~/.spacemacs
else
  git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
  echo "copying spacemacs config file..."
  cp spacemacs ~/.spacemacs
fi
echo "Spacemacs installed!"
