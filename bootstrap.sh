#!/usr/bin/env bash

CUR_DIR=`pwd`

#backup original files
mkdir ~/dotfile-backups
mv ~/.atom ~/dotfile-backups/.
mv ~/.bash_profile ~/dotfile-backups/.
mv ~/.inputrc ~/dotfile-backups/.

ln -s "$CUR_DIR"/atom ~/.atom
ln -s "$CUR_DIR"/bash_profile ~/.bash_profile
ln -s "$CUR_DIR"/inputrc ~/.inputrc
