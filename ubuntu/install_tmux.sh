#!/bin/bash

set -e

mkdir -p /usr/src/tmux-mem-cpu-load
pushd /usr/src/tmux-mem-cpu-load
git clone --depth=1 https://github.com/thewtex/tmux-mem-cpu-load.git .
cmake .
make
make install
popd

mkdir -p /usr/src/tmux
pushd /usr/src/tmux
curl -L https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz > tmux-2.1.tar.gz
tar zxvf tmux-2.1.tar.gz
pushd tmux-2.1
./configure && make
make install
popd
popd
