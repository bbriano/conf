source $HOME/.env
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PROMPT='%(?:%F{green}λ:%F{red}λ) %F{cyan}%~ %f'
export EDITOR=/usr/local/bin/nvim
export FZF_DEFAULT_COMMAND='rg --files'
export BAT_THEME=base16
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

alias c='cd ~/n'
alias l='ls -1'
alias vi='/usr/local/bin/nvim'
alias py='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'
alias npmls='npm -g list --depth 0'
