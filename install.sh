#!/bin/bash

cp dotfiles/.bash_profile_minimal .bash_profile
cp dotfiles/.bashrc_minimal .bash_profile
cp dotfiles/.tmux.conf .tmux.conf

dotfiles/setup_git.sh
