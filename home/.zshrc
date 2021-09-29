source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/autojump/autojump.zsh

export EDITOR=vim
export MANWIDTH=72
export TERM=tmux-256color
export PROMPT='%(?:%F{green}λ:%F{red}λ) %F{cyan}%~%f '
export PATH=.:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/go/bin:/Library/TeX/texbin:~/plan9/bin
export PLAN9=~/plan9
export FZF_DEFAULT_COMMAND="find . -type f | sed 's/^\.\///'"
export FZF_DEFAULT_OPTS='--color=bw,hl:regular,hl+:regular:reverse'

# Remove space to the right of RPROMPT.
export ZLE_RPROMPT_INDENT=0

# For clangd
export C_INCLUDE_PATH=/usr/local/include
export CPLUS_INCLUDE_PATH=/usr/local/include

# Aliases
alias ls='ls -G'
alias l='ls -1'
alias ll='ls -la'
alias ag='ag --color-line-number "" --color-match 33 --color-path 34'

# Emacs-like bindings
bindkey -e
bindkey ^u backward-kill-line

# Ctrl-x Ctrl-e opens current command in Vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# Show elapsed time of last command
function preexec() {
	cmd_start=$(($(print -P %D{%s%3.})))
}
function precmd() {
	if [ $cmd_start ]; then
		local now=$(($(print -P %D{%s%3.})))
		local d_ms=$(($now - $cmd_start))
		local d_s=$((d_ms / 1000))
		local ms=$((d_ms % 1000))
		local s=$((d_s % 60))
		local m=$(((d_s / 60) % 60))
		local h=$((d_s / 3600))
		if ((h > 0)); then
			cmd_time=${h}h${m}m
		elif ((m > 0)); then
			cmd_time=${m}m${s}s
		elif ((s > 9)); then
			cmd_time=${s}.$(printf %03d $ms | cut -c1-2)s              # 12.34s
		elif ((s > 0)); then
			cmd_time=${s}.$(printf %03d $ms)s                          # 1.234s
		else
			cmd_time=${ms}ms
		fi
		export RPROMPT='%F{green}'$cmd_time
		unset cmd_start
	else
		# Clear previous result when hitting Return with no command to execute.
		unset cmd_time
	fi
}
