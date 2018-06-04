export TERM="screen-256color"

export EDITOR="vim"

# pyenv config below
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  
  # pyenv-virtualenv
  eval "$(pyenv virtualenv-init -)"
fi

# anaconda
if [ -d "$HOME/anaconda3/bin" ]; then
  export PATH="$HOME/anaconda3/bin:$PATH"
fi

# cargo
if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# aliases
alias ll="ls -alF"
