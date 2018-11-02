export TERM="screen-256color"

export EDITOR="vim"

# # pyenv config below
# if [ -d "$HOME/.pyenv" ]; then
#   export PYENV_ROOT="$HOME/.pyenv"
#   export PATH="$PYENV_ROOT/bin:$PATH"
#   eval "$(pyenv init -)"
#   
#   # pyenv-virtualenv
#   eval "$(pyenv virtualenv-init -)"
# fi

# anaconda
# no longer needed for conda > 4.4?
# if [ -d "$HOME/anaconda3/bin" ]; then
#   export PATH="$HOME/anaconda3/bin:$PATH"
# fi

# cargo
if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# aliases
alias ll="ls -al --color"
alias l="ll"
alias gl="git log --oneline --graph --decorate"
alias gs="git status"
# neovim
if [ `command -v nvim` ]; then
        vim_command="nvim"
else
        vim_command="vim"
fi
alias vim=$vim_command
alias vi=$vim_command
alias nv=$vim_command
alias v=$vim_command
alias gaa="git add -A"
alias gcm="git commit"
alias grep="grep -n"
alias find-todo-python="grep --include='*.py' -inr '#[[:blank:]+]TODO'"
alias sa="source activate"
. /home/eric/anaconda3/etc/profile.d/conda.sh
