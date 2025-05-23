# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
# TODO make this os-sensitive
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
# amuse
ZSH_THEME="amuse"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_password.txt

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true
# bat (https://github.com/sharkdp/bat)
if [ `command -v batcat` ]; then
    # TODO check that bat doesn't exist already
    alias bat=batcat
fi

## Aliases:
alias ll="ls -ahl"
alias l="ll"

# Git aliases:
alias gaa="git add -A"
alias gcm="git commit"
alias gcam="git commit -a -m"
alias gs="git status"
alias gri="git rebase -i"
alias gpf="git push --force"
alias gl="git log --oneline --graph --decorate"

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

# something stupid that entertains me
alias exeunt='exit'

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)
