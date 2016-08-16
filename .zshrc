# Path to your oh-my-zsh installation.
export ZSH=/Users/teotn/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# How often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Change the command execution time stamp shown in the history command output.
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)


# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias tree="tree -I \"node_modules\""
alias update="brew update && brew upgrade `brew outdated`"
alias ..="cd .."
alias $=""
alias nr="npm run"
alias n="npm"
alias rc="source ~/.zshrc"

