let g:fzf_action = {
	\'ctrl-t': 'tab split',
	\'ctrl-s': 'split',
	\'ctrl-v': 'vsplit',
\}

" Without this FZF closes slowly.
tnoremap <esc> <esc><esc>

" Hide FZF status line.
augroup FZF
	autocmd!
	autocmd FileType fzf set laststatus=0
		\| autocmd BufLeave <buffer> set laststatus=1
augroup END
