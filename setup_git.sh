#!/bin/bash

git config --global alias.co "checkout"
git config --global alias.st "status"
git config --global alias.hist "log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"
