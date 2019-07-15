#!/bin/bash
# This script create symlinks from the home directory to all that's in ~/dotfiles


dir=~/dotfiles  # dotfiles directory
old_dir=~/dotfiles_old # backup directory
files=".gitconfig .zshrc .vimrc" # files to symlink in homedir

# create the backup directory
mkdir -p $old_dir

# and switch to the current one
cd $dir

# then create the symlinks!
for file in $files; do 
mv ~/$file ~/dotfiles_old/
ln -s $dir/$file  ~/$file
done




