# Check whether we are on Linux or macOS:
UNAME=$(uname -a)
if [[ $UNAME == *"Linux"* ]]; then
    OS='linux'
else
    OS='mac'
fi

# Some defaults:
export TERM="screen-256color"
export EDITOR="vim"

# Initializations, autocompletes, etc. for various programs / programming languages / PL environment managers / etc.:
## homebrew
if [ -d "/opt/homebrew" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

## Rust / Cargo
if [ -d "$HOME/.cargo" ]; then
  # export PATH="$HOME/.cargo/bin:$PATH"
  . "$HOME/.cargo/env"
fi

## Golang
if [ -d "/usr/local/go/bin" ]; then
    export PATH="/usr/local/go/bin:$PATH"
fi

## ~/bin folder
if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

## ~/.local/bin folder
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

## pyenv
if [ -d "$HOME/.pyenv/bin" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

## Ruby/rbenv
if which rbenv > /dev/null 2>&1; then
    eval "$(rbenv init - zsh)"
fi

## Google Cloud SDK:
### $PATH update:
if test -f $HOME/google-cloud-sdk/path.zsh.inc; then
    source $HOME/google-cloud-sdk/path.zsh.inc;
fi
### Shell autocompletion:
if test -f $HOME/google-cloud-sdk/completion.zsh.inc; then
    source $HOME/google-cloud-sdk/completion.zsh.inc;
fi

## bat (https://github.com/sharkdp/bat)
if [ `command -v batcat` ]; then
    # TODO check that bat doesn't exist already
    alias bat=batcat
fi

## fzf (https://github.com/junegunn/fzf)
if [ `command -v fzf` ]; then
    source <(fzf --zsh)
fi

## GPG
# if [ -r ~/.zshrc ];
#   then echo -e '\nexport GPG_TTY=$(tty)' >> ~/.zshrc; \
#   else echo -e '\nexport GPG_TTY=$(tty)' >> ~/.zprofile;
# fi

## iTerm2 shell integration:
if [ "$OS"=='mac' ]; then
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true
fi

# End initializations / autocompletes / $PATH updates / etc.

# Aliases:
## General:
if [ "$OS"=='mac' ]; then
    alias ll="ls -Gal" # mac
    alias tmux="tmux -CC"
else
    alias ll="ls -ahl --color" # linux
fi
alias l="ll"

## Git aliases:
alias gaa="git add -A"
alias gcm="git commit"
alias gcam="git commit -a -m"
alias gl="git log --oneline --graph --decorate"
alias gs="git status"
alias gri="git rebase -i"
alias gpf="git push --force"

# Vim aliases:
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
alias grep="grep -n"
alias find-todo-python="grep --include='*.py' -inr '#[[:blank:]+]TODO'"
alias sa="source activate"

# Tmux aliases:
alias ta='tmux attach-session -t'
alias tl='tmux ls'

# Something stupid that entertains me
alias exeunt='exit'
# End aliases.

# TODO explain
# PyArrow
export OPENSSL_ROOT_DIR="/opt/homebrew/Cellar/openssl@3/3.0.1"
