#!/bin/sh

echo "Installing bash settings..."
cp bashrc ~/.bashrc
cp bash_profile ~/.bash_profile
echo "Bash settings installed!"

echo "Installing vim settings..."
cp vimrc ~/.vimrc
echo "Vim settings installed!"

echo "Installing spacemacs..."
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
cp spacemacs ~/.spacemacs
echo "Spacemacs installed!"
