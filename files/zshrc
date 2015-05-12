ZSH=$HOME/.oh-my-zsh
ZSH_THEME="alanpeabody"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Configuration files
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconfig="vim ~/.vimrc"
alias tmuxconfig="vim ~/.tmux.conf"

# Git
alias gt="git checkout --track"
alias gaa="git add --all"
alias gf="git fetch"

# Rails
alias be="bundle exec"

# Path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export EDITOR='vim'

# rbenv
eval "$(rbenv init -)"

# Chromium depot tools
export PATH="$PATH:/opt/depot_tools"
export DEPOT_TOOLS_UPDATE=0

# ADT
export PATH="$PATH:/opt/adt/sdk/platform-tools"

export TERM=xterm-256color

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"
export DISABLE_LIVEMODE=false

# Allow [ or ] whereever you want
unsetopt nomatch
