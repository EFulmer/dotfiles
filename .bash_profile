# added by Anaconda2 4.0.0 installer
export PATH="/Users/eric/.local/bin:/Users/eric/anaconda/bin:$PATH"
# below this line new stuff:

# Original PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# other TODO -- colorize prompt, todo finder 
alias find-todos-rs="grep -nr \"^.*//.*TODO.*$\"" # doesnt find multiline comment TODOs
alias find-todos-py="grep -nr \"^.*#.*TODO.*$\""
# python ~/vagrant_vm/random_dril_tweet.py

# some useful aliases
alias ls="ls -GalT"
alias ll=ls
if [ -x "$(command -v nvim)" ]; then
  alias vim="$(command -v nvim)"
fi

# original XTERM
export TERM=xterm-256color

# original PS1:
# export PS1="\h:\W \u\$"
# export PS1="\[\033[0;34m\]\u@\h:\w$ \[\033[0m\]"
# export PS1="\[\e[1m\]\[\033[0;34m\]\u@\h:\w$ \[\033[0m\]\[\e[0m\]"
# export PS1="\[$(tput bold)\]\[\033[38;5;2m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;7m\]:\[$(tput sgr0)\]\[\033[38;5;3m\][\w]\[$(tput sgr0)\]\[\033[38;5;14m\]\\$\[$(tput sgr0)\] "
# export PS1="\[$(tput bold)\]\[\033[38;5;243m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;28m\] @ \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;3m\][\w]\[$(tput sgr0)\]\[\033[38;5;245m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
# export PS1="\[$(tput bold)\]\[\033[38;5;243m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;28m\] at \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] in \[$(tput sgr0)\]\[\033[38;5;3m\]\w\[$(tput sgr0)\]\[\033[38;5;245m\]\\n\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export PS1="\[$(tput bold)\]\[\033[38;5;125m\](\t)\[$(tput sgr0)\] \[$(tput bold)\]\[\033[38;5;243m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;28m\] at \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] in \[$(tput sgr0)\]\[\033[38;5;3m\]\w\[$(tput sgr0)\]\[\033[38;5;245m\] \n\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

 #set -o vi

# this is the most important line
~/random-dril-tweet

# added by Anaconda2 4.1.1 installer
export PATH="/Users/eric/anaconda/bin:$PATH"

# for rust stuff
export OPENSSL_INCLUDE_DIR=/usr/local/Cellar/openssl/1.0.2d_1/include/

# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# autocomplete for bash
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# added by Anaconda3 4.4.0 installer
export PATH="/Users/eric/anaconda/bin:$PATH"

