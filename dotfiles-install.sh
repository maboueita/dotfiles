#!/bin/bash
#.make.sh
# This script create symlinks from the home directory to all that's in ~/dotfiles


dir=~/dotfiles  # dotfiles directory
files = ".gitconfig .zshrc .vimrc" # files to symlink in homedir

# create the symlinks!
for file in $files; do 
ln -s $dir/$file  ~/$file
done




