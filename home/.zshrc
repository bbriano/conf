export EDITOR=vim
export MANWIDTH=72
export TERM=tmux-256color
export PROMPT='%(?:%F{green}:%F{red})水%f'
export PLAN9=/usr/local/plan9
export PATH=.:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/go/bin:/Library/TeX/texbin:$PLAN9/bin
export FZF_DEFAULT_COMMAND="find . -type f | sed 's/^\.\///'"
export FZF_DEFAULT_OPTS='--color=bw,hl:regular,hl+:regular:reverse'
export ZLE_RPROMPT_INDENT=0    # Remove space to the right of RPROMPT.

# Set Emacs-like bindings.
bindkey -e
bindkey ^u backward-kill-line

# Ctrl-x Ctrl-e to open current line in Vim.
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# Show elapsed time of last command.
function preexec() {
	export start=$(($(print -P %D{%s%3.})))
}
function precmd() {
	if [ -z $start ]; then
		# Clear previous result when hitting Return with no command.
		RPROMPT=
		return
	fi
	local now=$(($(print -P %D{%s%3.})))
	local d_ms=$(($now-$start))
	local ms=$((d_ms%1000))
	local d_s=$((d_ms/1000))
	local s=$((d_s%60))
	local m=$(((d_s/60)%60))
	local h=$((d_s/3600))
	if ((h > 0)); then
		time=${h}h${m}m
	elif ((m > 0)); then
		time=${m}m${s}s
	elif ((s > 9)); then
		time=${s}.$(printf %03d $ms | cut -c1-2)s    # 12.34s
	elif ((s > 0)); then
		time=${s}.$(printf %03d $ms)s                # 1.234s
	else
		time=${ms}ms
	fi
	RPROMPT='%F{green}'$time
	unset start
}
