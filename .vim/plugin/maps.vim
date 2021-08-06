" 0 is clear. 0 is home.
nnoremap <silent> 0		:nohl<cr>:echo bufferline#get_echo_string()<cr>0

" Stop accidentally switching to Ex-mode. Execute macro on register q.
nnoremap Q			@q

" Default behaviour: yank line. Make it consistent with C and D.
nnoremap Y			y$

" Paste over selected text while preserving the unnamed register.
vnoremap p			"_dP

" Shift-K opens word under cursor help page.
nnoremap K 			:execute 'help' expand('<cword>')<CR>

" Emacs-like binding in command mode.
cnoremap <c-a>			<c-b>
cnoremap <c-b>			<left>
cnoremap <c-f>			<right>
cnoremap <c-d>			<delete>

" Who uses S and s? cc and cl does the same thing.
nnoremap <silent> S		:bprevious<cr>
nnoremap <silent> s		:bnext<cr>

" Case sensitive and * not jump to the next match.
nnoremap <silent> *		:let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>
nnoremap <silent> g*		:let @/='\C'.expand('<cword>')<cr>:set hls<cr>
nnoremap <silent> #		:let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>?<cr>
nnoremap <silent> g#		:let @/='\C'.expand('<cword>')<cr>:set hls<cr>?<cr>

" Use arrow keys to resize the current window.
nnoremap <silent> <up>		:resize -1<cr>
nnoremap <silent> <down>	:resize +1<cr>
nnoremap <silent> <right>	:vertical resize +1<cr>
nnoremap <silent> <left>	:vertical resize -1<cr>

" Useful to move around in visual block mode with virtualedit=block.
vnoremap <c-h>			hoho
vnoremap <c-j>			jojo
vnoremap <c-k>			koko
vnoremap <c-l>			lolo

" Stolen mappings from https://github.com/tpope/vim-unimpaired.
nnoremap [q			:cprev<cr>
nnoremap ]q			:cnext<cr>
nnoremap [l			:lprev<cr>
nnoremap ]l			:lnext<cr>

" Quick source!
nnoremap <space>S		:source ~/.config/nvim/init.vim<cr>

" Tmux-like bindings.
nnoremap <silent> <space>l	:buffer #<cr>
nnoremap <silent> <space>x	:bdelete<cr>

" Substitute texts that matches the last search.
nnoremap <space>s		:%s///g<left><left>
vnoremap <space>s		:s///g<left><left>

" Like gqq and gq but separate on '.', '?' and '!'.
" TODO: Keep new lines commented if possible.
" TODO: Add verb version ala gq.
nnoremap <space>qq		:s/\v(\.\|\?\|\!) +/\1\r/g<cr>
vnoremap <space>q		:s/\v(\.\|\?\|\!) +/\1\r/g<cr>

" Run selected text through python and paste the output.
vnoremap <silent> <space>p	yPgv:!python3<cr>

" Open today's note.
nnoremap <silent> <space>tn	:call TodaysNote()<cr>

" Force buffer delete (dangerous).
nnoremap <silent> <space><space>x :bdelete!<cr>

" Show syntax highlight group under cursor.
nnoremap <space><space>s	:echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<cr>

" Diff current file with current buffer.
nnoremap <space><space>d	:w !diff % -<cr>

" Ack
nmap <space>/			<Plug>(FerretAck)
nmap <space>?			<Plug>(FerretAcks)
nmap <space>*			<Plug>(FerretAckWord)

" FZF
nnoremap <c-p>			:Files<cr>
nnoremap <c-n>			:History<cr>
nnoremap <c-q>			:Files %:h<cr>
nnoremap <c-k>			:Tags<cr>
nnoremap <c-s>			:BTags<cr>
nnoremap <space>h		:Help<cr>

" StartupTime
nnoremap <space><space>t	:StartupTime<cr>
