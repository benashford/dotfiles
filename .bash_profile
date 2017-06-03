# Change order of PATH for me only (so not in /etc/paths)

export PATH=$HOME/bin:$HOME/.rbenv/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$(echo $PATH | sed -e "s/:\/usr\/local\/bin//" | sed -e "s/:\/Users\/ben\/\.rbenv\/shims//")

export PATH=$HOME/.cargo/bin:$PATH

export RUST_SRC_PATH=~/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src

eval "$(rbenv init -)"

eval "$(pyenv init -)"

export PATH=bin:$PATH

# Same as non-login shells

source $HOME/.bashrc
