plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $HOME/.env

export PROMPT='%(?:%F{green}λ:%F{red}λ) %F{cyan}%~ %f'
export EDITOR=/usr/local/bin/nvim
export FZF_DEFAULT_COMMAND='rg --files'
export BAT_THEME=base16

alias c='cd ~/n'
alias l='ls -1'
alias vi='/usr/local/bin/nvim'
alias py='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'
alias npmls='npm -g list --depth 0'
