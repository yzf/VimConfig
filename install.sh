#!/bin/bash

# Check if vim has been installed
if [ a`which vim` = a'' ]
then
  echo "Please install vim first"
  exit 1
fi

# Bakeup old settings
bakeup_folder="bakeup"
echo "Bakeup '.vimrc' and '.vim' into $bakeup_folder"
rm -rf $bakeup_folder
mkdir -p $bakeup_folder
if [ -f ~/.vimrc ]
then
  mv ~/.vimrc $bakeup_folder/vimrc
fi
if [ -d ~/.vim ]
then
  mv ~/.vim $bakeup_folder/vim
fi

echo "Begin to install vim's plugins"
mkdir -p ~/.vim
cp vimrc ~/.vimrc
cp -r colors ~/.vim
cp plugins.vim ~/.vim
cp plugins_config.vim ~/.vim
# Download the vundle plugin for managing plugins
git clone http://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install all the plugins set in the plugins.vim
vim +PluginInstall +qall

exit 0
