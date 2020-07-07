# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Source Oh my zsh
ZSH_DISABLE_COMPFIX="true"
source $ZSH/oh-my-zsh.sh

# Enable Vim key bindings
bindkey -v

# Aliases
alias matlab='/Applications/MATLAB_R2020a.app/bin/matlab'
alias gG='cd ~/Google\ Drive\ File\ Stream/My\ Drive'
alias v='nvim'

