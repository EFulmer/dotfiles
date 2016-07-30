# added by Anaconda2 4.0.0 installer
export PATH="/Users/eric/anaconda/bin:$PATH"
# below this line new stuff:

# Original PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# other TODO -- colorize prompt, todo finder 
alias find-todos-rs="grep -nr \"^.*//.*TODO.*$\"" # doesnt find multiline comment TODOs
alias find-todos-py="grep -nr \"^.*#.*TODO.*$\""
# python ~/vagrant_vm/random_dril_tweet.py

alias ls="ls -Galt"
alias ll=ls

# original XTERM
# TERM=xterm-256color

# original PS1:
# export PS1="\h:\W \u\$"
# export PS1="\[\033[0;34m\]\u@\h:\w$ \[\033[0m\]"
# export PS1="\[\e[1m\]\[\033[0;34m\]\u@\h:\w$ \[\033[0m\]\[\e[0m\]"
export PS1="\[$(tput bold)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]:\[$(tput sgr0)\]\[\033[38;5;3m\][\w]\[$(tput sgr0)\]\[\033[38;5;14m\]\\$\[$(tput sgr0)\] "

set -o vi
# this is the most important line
~/random-dril-tweet

