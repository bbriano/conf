# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Source Oh my zsh
ZSH_DISABLE_COMPFIX="true"
source $ZSH/oh-my-zsh.sh

# Set default editor
export EDITOR=/usr/local/bin/nvim

# Set ripgrep as default source for fzf
export FZF_DEFAULT_COMMAND='rg --files'

# Aliases
alias v="/usr/local/bin/nvim"
alias py="/usr/local/bin/python3"
alias pip="/usr/local/bin/pip3"
alias matlab="/Applications/MATLAB_R2020a.app/bin/matlab"
alias cra="npx create-react-app"
alias npmls="npm -g list --depth 0"
alias bat="bat --theme base16"
alias tree="tree -I node_modules"
alias mars="java -jar /Users/briano/n/uni/FIT1008/Mars4_5.jar"

# Random forturne cowfile
alias rfc="fortune | cowsay -f \"\$(cowsay -l | sed '1d' | tr ' ' '\n' | sort -R | head -1)\""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
