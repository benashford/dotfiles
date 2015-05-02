#!/bin/bash

mkdir .profiles

cp dotfiles/.bash_profile_minimal .bash_profile
cp dotfiles/.profile_minimal .profile
cp dotfiles/.bashrc_minimal .bashrc
cp dotfiles/.tmux.conf .tmux.conf

dotfiles/setup_git.sh
