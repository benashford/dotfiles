# Change order of PATH for me only (so not in /etc/paths)

export PATH=$HOME/bin:$HOME/.rbenv/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$(echo $PATH | sed -e "s/:\/usr\/local\/bin//" | sed -e "s/:\/Users\/ben\/\.rbenv\/shims//")

eval "$(rbenv init -)"
eval "$(pyenv init -)"

export PATH=bin:$HOME/.cargo/bin:$PATH

# Same as non-login shells

source $HOME/.bashrc
