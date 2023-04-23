export TERM=tmux-256color
export EDITOR=vim
export MANWIDTH=72
export PROMPT='$ '
export PLAN9=/usr/local/plan9
export PATH=.:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/go/bin:/Library/TeX/texbin:$PLAN9/bin

# Set Emacs-like bindings.
bindkey -e
bindkey ^u backward-kill-line

# Ctrl-x Ctrl-e to open current line in Vim.
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
