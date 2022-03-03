#!/usr/bin/env bash

CUR_DIR=`pwd`

#backup original files
mkdir ~/dotfile-backups
mv ~/.zshrc ~/dotfile-backups/.
mv ~/.zsh ~/dotfile-backups/.

ln -s "$CUR_DIR"/zshrc ~/.zshrc
ln -s "$CUR_DIR"/completion ~/.zsh
