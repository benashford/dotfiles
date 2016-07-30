#!/bin/bash

set -e

# Pre-requisited

apt-get -y install tmux libevent-dev libncurses5-dev

# tmux-mem-cpu-load

mkdir -p /usr/src/tmux-mem-cpu-load
pushd /usr/src/tmux-mem-cpu-load
git clone --depth=1 https://github.com/thewtex/tmux-mem-cpu-load.git .
cmake .
make
make install
popd
rm -rf /usr/src/tmux-mem-cpu-load
