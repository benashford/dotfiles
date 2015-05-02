#!/bin/bash

git config --global alias.co "checkout"
git config --global alias.st "status"
git config --global alias.hist "log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"

git config --global user.name "Ben Ashford"
git config --global user.email "benashford@users.noreply.github.com"

git config --global push.default simple
