export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -x "$(command -v npm)" ] && export PATH="$(npm root -g):$PATH"
[ -x "$(command -v yarn)" ] && export PATH="$(yarn global bin):$PATH"

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
export ZSH_CACHE_DIR="${ZSH}/cache"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# Preferred: avit, bureau, pygmalion
ZSH_THEME="bureau"


export UPDATE_ZSH_DAYS=7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
  extract
  npm
  sudo
)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

setopt autocd autopushd pushdignoredups

alias tree='tree -I "node_modules"'
alias ..='cd ..'
alias nr='npm run'
alias n='npm'
alias rc='source ~/.zshrc'
alias vrc='vim ~/.zshrc'
alias g='git'
alias py='python'
alias sl='ls'

alias deploy='docker stack deploy --with-registry-auth -c docker-compose.yml'
alias dkr='docker'
alias ds='docker service'
alias dc='docker container'
alias dx='docker exec -it'
alias dp='docker ps'
alias di='docker image'
alias dl='docker logs'
alias dls='docker service logs'
alias dn='docker network'

[ -s "$HOME/.workrc" ] && source $HOME/.workrc
