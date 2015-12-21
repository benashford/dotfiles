#!/bin/bash

mkdir .profiles

cp dotfiles/ubuntu/.bash_profile .bash_profile
cp dotfiles/ubuntu/.profile .profile
cp dotfiles/ubuntu/.bashrc .bashrc
cp dotfiles/.tmux.conf .tmux.conf

dotfiles/setup_git.sh
