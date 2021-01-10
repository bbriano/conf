source $HOME/.env
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#566178'
export PROMPT='%(?:%F{green}λ:%F{red}λ) %F{cyan}%~ ${vcs_info_msg_0_}%f'
export EDITOR=nvim
export FZF_DEFAULT_COMMAND='rg --files'
export BAT_THEME=base16
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# git prompt
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
zstyle ':vcs_info:*' formats '%F{magenta}%b%c%u '
zstyle ':vcs_info:*' stagedstr '%F{blue}*'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}*'
zstyle ':vcs_info:*' check-for-changes true

alias ls='ls -G'
alias l='ls -1'
alias vi=nvim
alias py=python3
alias pip=pip3
alias tsm=transmission-remote
alias lg=lazygit

bindkey -e
