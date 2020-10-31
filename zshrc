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
alias dj="vi ~/n/notes/$(date +%Y-%m-%d.md)"
alias vi='/usr/local/bin/nvim'
alias py='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'
alias matlab='/Applications/MATLAB_R2020a.app/bin/matlab'
alias cra='npx create-react-app'
alias npmls='npm -g list --depth 0'
alias tree='tree -I node_modules'
alias mars='java -jar /Users/briano/n/uni/FIT1008/Mars4_5.jar'

# Random forturne cowfile
alias rfc="fortune | cowsay -f \"\$(cowsay -l | sed '1d' | tr ' ' '\n' | sort -R | head -1)\""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
