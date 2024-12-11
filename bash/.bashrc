# export PATH=$PATH:/home/arief/.local/bin
export PATH="$PATH:/home/arief/.dotnet/tools"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/arief/.cfg/ --work-tree=/home/arief'
alias config='/usr/bin/git --git-dir=/home/arief/.cfg/ --work-tree=/home/arief'
. "$HOME/.cargo/env"
