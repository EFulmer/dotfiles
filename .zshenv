# check whether linux or mac
UNAME=$(uname -a)
if [[ $UNAME == *"Linux"* ]]; then
    OS='linux'
else
    OS='mac'
fi

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
if [ -d "$HOME/anaconda3/bin" ]; then
#   export PATH="$HOME/anaconda3/bin:$PATH"
    . /home/eric/anaconda3/etc/profile.d/conda.sh
fi

# cargo
if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# kakoune
if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.zsh.inc' ]; then
    . '$HOME/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/google-cloud-sdk/completion.zsh.inc' ]; then
    . '$HOME/google-cloud-sdk/completion.zsh.inc';
fi

# this is a testing line for now, to test that we can use the Konnekt GKE cluster locally.
export KUBECONFIG="/home/eric/code/projects/konnekt-infrastructure/kubeconfig/konnekt-playground/konnekt-dev/paidsearch-dev/dev.yaml"
