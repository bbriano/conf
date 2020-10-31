# Oh my zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME=briano
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Set default editor
export EDITOR=/usr/local/bin/nvim

# Set ripgrep as default source for fzf
export FZF_DEFAULT_COMMAND='rg --files'

# Set bat theme
export BAT_THEME=base16

# Aliases
alias c='cd ~/n'
alias l='ls -1'
alias vi='/usr/local/bin/nvim'
alias py='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'
alias npmls='npm -g list --depth 0'
