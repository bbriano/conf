" ESC to clear everything. Trigger CursorMoved to close LSP preview window.
nnoremap <silent> <esc>		:doautocmd CursorMoved<cr>:nohl<cr>:echo<cr>

" Basics.
nnoremap Q			@q
nnoremap Y			y$
vnoremap p			"_dP
command! W			w
command! Q			q
command! Diff			w !diff % -

" Emacs-like binding in command mode.
cnoremap <c-a>			<c-b>
cnoremap <c-b>			<left>
cnoremap <c-f>			<right>
cnoremap <c-d>			<delete>

" Buffer controls.
nnoremap <silent> S		:bprevious<cr>
nnoremap <silent> s		:bnext<cr>
nnoremap <silent> <space>l	:buffer #<cr>
nnoremap <silent> <c-s>		:Sbd<cr>

" Case sensitive and * not jump to the next match.
nnoremap <silent> *		:let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>
nnoremap <silent> g*		:let @/='\C'.expand('<cword>')<cr>:set hls<cr>
nnoremap <silent> #		:let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>?<cr>
nnoremap <silent> g#		:let @/='\C'.expand('<cword>')<cr>:set hls<cr>?<cr>

" Use arrow keys to resize the current window.
nnoremap <silent> <down>	:resize +1<cr>
nnoremap <silent> <up>		:resize -1<cr>
nnoremap <silent> <right>	:vertical resize +1<cr>
nnoremap <silent> <left>	:vertical resize -1<cr>

" Good with virtualedit=block.
vnoremap <c-h>			hoho
vnoremap <c-j>			jojo
vnoremap <c-k>			koko
vnoremap <c-l>			lolo

" Substitute last search.
nnoremap <space>s		:%s///g<left><left>
vnoremap <space>s		:s///g<left><left>

" Like gqq and gq but separate on '.', '?' and '!'.
nnoremap <space>qq		:s/\v(\.\|\?\|\!) +/\1\r/g<cr>
vnoremap <space>q		:s/\v(\.\|\?\|\!) +/\1\r/g<cr>

" Show syntax highlight group under cursor.
nnoremap <space><space>s	:echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<cr>

" Open today's note.
nnoremap <space>tn		:call briano#TodaysNote()<cr>

"		*** Plugin Mappings ***

" StartupTime
nnoremap <space><space>t	:StartupTime<cr>

" Ack
nmap <space>/			<Plug>(FerretAck)
nmap <space>?			<Plug>(FerretAcks)
nmap <space>*			<Plug>(FerretAckWord)

" FZF
nnoremap <c-p>			:Files<cr>
nnoremap <c-n>			:History<cr>
nnoremap <c-q>			:Files %:h<cr>
nnoremap <space>h		:Help<cr>

" Rainbow
nnoremap <space>rp		:RainbowParenthesesToggle<cr>

" Nvim-Lspconfig
nnoremap <silent> [g		:lua vim.lsp.diagnostic.goto_prev()<cr>
nnoremap <silent> ]g		:lua vim.lsp.diagnostic.goto_next()<cr>
nnoremap <silent> gy		:lua vim.lsp.buf.type_definition()<cr>
nnoremap <silent> gd		:lua vim.lsp.buf.definition()<cr>
nnoremap <silent> gr		:lua vim.lsp.buf.references()<cr>
nnoremap <silent> K		:lua vim.lsp.buf.hover()<cr>
nnoremap <space>rn		:lua vim.lsp.buf.rename()<cr>
nnoremap <space>ca		:lua vim.lsp.buf.code_action()<cr>
