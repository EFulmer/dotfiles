# check whether linux or mac
UNAME=$(uname -a)
if [[ $UNAME == *"Linux"* ]]; then
    OS='linux'
else
    OS='mac'
fi

export TERM="screen-256color"

export EDITOR="vim"

# pyenv config below
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"

  # pyenv-virtualenv
  eval "$(pyenv virtualenv-init -)"
fi

# poetry
if [ -d "$HOME/.poetry/bin" ]; then
    export PATH="$HOME/.poetry/bin:$PATH"
fi

# cargo
if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# go
if [ -d "/usr/local/go/bin" ]; then
    export PATH="/usr/local/go/bin:$PATH"
fi

# ~/bin folder
if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

# aliases
alias ll="ls -ahl --color"
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
alias ta='tmux attach-session -t'
alias tl='tmux ls'
# something stupid that entertains me
alias exeunt='exit'


# The next line updates PATH for the Google Cloud SDK.
if test -f $HOME/google-cloud-sdk/path.zsh.inc; then
    source $HOME/google-cloud-sdk/path.zsh.inc;
fi

# The next line enables shell command completion for gcloud.
if test -f $HOME/google-cloud-sdk/completion.zsh.inc; then
    source $HOME/google-cloud-sdk/completion.zsh.inc;
fi

# bat (https://github.com/sharkdp/bat)
if [ `command -v batcat` ]; then
    # TODO check that bat doesn't exist already
    alias bat=batcat
fi
