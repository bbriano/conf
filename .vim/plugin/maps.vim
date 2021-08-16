" Basics
nnoremap <silent> <esc>		:nohl<cr>:echo<cr>
nnoremap Q			@q
nnoremap Y			y$
vnoremap p			"_dP
nnoremap K 			:execute 'help' expand('<cword>')<cr>

" Emacs-like binding in command mode.
cnoremap <c-a>			<c-b>
cnoremap <c-b>			<left>
cnoremap <c-f>			<right>
cnoremap <c-d>			<delete>

" Buffer
nnoremap <silent> S		:bprevious<cr>
nnoremap <silent> s		:bnext<cr>
nnoremap <silent> <space>l	:buffer #<cr>
nnoremap <silent> <space>x	:Sbd<cr>

" Case sensitive and * not jump to the next match.
nnoremap <silent> *		:let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>
nnoremap <silent> g*		:let @/='\C'.expand('<cword>')<cr>:set hls<cr>
nnoremap <silent> #		:let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>?<cr>
nnoremap <silent> g#		:let @/='\C'.expand('<cword>')<cr>:set hls<cr>?<cr>

" Good with virtualedit=block.
vnoremap <c-h>			hoho
vnoremap <c-j>			jojo
vnoremap <c-k>			koko
vnoremap <c-l>			lolo

" Stolen from https://github.com/tpope/vim-unimpaired.
nnoremap [q			:cprev<cr>
nnoremap ]q			:cnext<cr>
nnoremap [l			:lprev<cr>
nnoremap ]l			:lnext<cr>

" Substitute last search.
nnoremap <space>s		:%s///g<left><left>
vnoremap <space>s		:s///g<left><left>

" Like gqq and gq but separate on '.', '?' and '!'.
nnoremap <space>qq		:s/\v(\.\|\?\|\!) +/\1\r/g<cr>
vnoremap <space>q		:s/\v(\.\|\?\|\!) +/\1\r/g<cr>

" Plugins
nnoremap <space>tn		:call briano#TodaysNote()<cr>
nnoremap <space><space>s	:echo briano#HighlightGroupCursor()<cr>
nnoremap <space><space>t	:StartupTime<cr>
nmap <space>/			<Plug>(FerretAck)
nmap <space>?			<Plug>(FerretAcks)
nmap <space>*			<Plug>(FerretAckWord)
nnoremap <c-p>			:Files<cr>
nnoremap <c-n>			:History<cr>
nnoremap <c-q>			:Files %:h<cr>
nnoremap <space>h		:Help<cr>
nnoremap <space>rp		:RainbowParenthesesToggle<cr>
