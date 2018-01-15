# Change order of PATH for me only (so not in /etc/paths)

export PATH=$HOME/bin:$HOME/.rbenv/bin:/usr/local/bin:/usr/local/sbin:$(echo $PATH | sed -e "s/:\/usr\/local\/bin//" | sed -e "s/:\/Users\/ben\/\.rbenv\/shims//")

export PATH=$HOME/.cargo/bin:$PATH

export NVM_DIR="$HOME/.nvm"

eval "$(rbenv init -)"
export PATH=bin:$PATH

eval "$(pyenv init -)"

. "/usr/local/opt/nvm/nvm.sh"

# Same as non-login shells

source $HOME/.bashrc
