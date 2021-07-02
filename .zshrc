source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/autojump/autojump.zsh

bindkey -e
bindkey -s ^z 'fg\n'
bindkey ^u backward-kill-line

export EDITOR=nvim
export PROMPT='%(?:%F{green}λ:%F{red}λ) %F{cyan}%~%f '
export RPROMPT='%F{blue}$cmd_time${vcs_info_msg_0_}'

export FZF_DEFAULT_OPTS='--color=gutter:#0e1014'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#566178'

export GOPATH=$HOME/go
export PLAN9=/Users/briano/src/plan9
export PATH=.:$HOME/bin:$PATH:$GOPATH/bin:PLAN9/bin

# For clangd.
export C_INCLUDE_PATH=/usr/local/include
export CPLUS_INCLUDE_PATH=/usr/local/include

alias ls='ls -G'        # Colors
alias l='ls -1'
alias ll='ls -la'
alias g='git'
alias py='python3'
alias pip='pip3'
alias iso='date +%Y-%m-%d'

if type gocloc > /dev/null; then
    alias cloc=gocloc
fi

if type lazygit > /dev/null; then
    alias lzg=lazygit
fi

if type lazydocker > /dev/null; then
    alias lzd=lazydocker
fi

if type nvim > /dev/null; then
    alias vi=nvim
fi

if type transmission-remote > /dev/null; then
    alias tsm=transmission-remote
fi

if type youtube-dl > /dev/null; then
    alias ydl=youtube-dl
fi

# Ctrl-x Ctrl-e opens current command in Vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# Git info in prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats ' %F{green}%b'
zstyle ':vcs_info:*' check-for-changes true

function preexec() {
    cmd_start=$(($(print -P %D{%s%6.}) / 1000))
}

function precmd() {
    vcs_info
    if [ $cmd_start ]; then
        local now=$(($(print -P %D{%s%6.}) / 1000))
        local d_ms=$(($now - $cmd_start))
        local d_s=$((d_ms / 1000))
        local ms=$((d_ms % 1000))
        local s=$((d_s % 60))
        local m=$(((d_s / 60) % 60))
        local h=$((d_s / 3600))

        if   ((h > 0)); then cmd_time=${h}h${m}m
        elif ((m > 0)); then cmd_time=${m}m${s}s
        elif ((s > 9)); then cmd_time=${s}.$(printf %03d $ms | cut -c1-2)s      # 12.34s
        elif ((s > 0)); then cmd_time=${s}.$(printf %03d $ms)s                  # 1.234s
        else cmd_time=${ms}ms
        fi

        unset cmd_start
    else
        # Clear previous result when hitting Return with no command to execute
        unset cmd_time
    fi
}
