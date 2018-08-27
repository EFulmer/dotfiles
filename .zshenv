export TERM="screen-256color"

export EDITOR="vim"

# # pyenv config below
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  
  # pyenv-virtualenv
  eval "$(pyenv virtualenv-init -)"
fi

# anaconda
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
alias c="cd"
alias v="vim"
alias gaa="git add -A"
alias gcm="git commit"
alias grep="grep -n"
alias find-todo-python="grep --include='*.py' -inr '#[[:blank:]+]TODO'"
