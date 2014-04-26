# Load global configuration

source /etc/bashrc

# Aliases

alias ls="ls -GF"
alias ll="ls -laGF"

alias grep="grep --color"
alias egrep="grep --color"
alias fgrep="grep --color"

alias be="bundle exec"

function gopath() {
    export GOPATH=$(pwd)
}

# bash completion rules

source /usr/local/etc/bash_completion.d/cdargs-bash.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/tmux

# prompt

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=auto

PS1="[\w]\$(__git_ps1)$ "

# clock

source ~/.clock.sh

# Miscellaneous

export GOMAXPROCS=8
