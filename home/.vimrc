" Silences "No matching autocommands: FileType netrw" when opening a file from netrw.
autocmd! Filetype netrw echo
let netrw_banner = 0                    " Hide the big annoying banner.
let netrw_dirhistmax = 0                " Don't create .netrwhist files.
let netrw_list_hide = '^\.\.\?/$'       " Hide . and .. in netrw.

set tabstop=4 shiftwidth=4
set incsearch hlsearch
set hidden
set nojoinspaces noswapfile nowrap
set virtualedit=block
set foldmethod=indent foldlevel=99
set undofile undodir=~/vim.undodir
set ttimeoutlen=0                       " Remove delay when exiting visual mode.
set shortmess=IF                        " Hide intro message and file names.
set completeopt=menuone                 " Always show menu, even if there is only one match.
set fillchars=vert:\ 
set autochdir

if v:version >= 900
	set fillchars+=eob:\ 
	nnoremap <silent> <esc> :nohl<cr>:echo<cr>
endif

" Basics
nnoremap Q     @q
nnoremap Y     y$
nnoremap *     *<c-o>
vnoremap p     "_dP
cnoremap <c-a> <c-b>
cnoremap <c-b> <left>
cnoremap <c-f> <right>
cnoremap <c-d> <delete>

" Buffers
nnoremap <silent> S            :bprevious<cr>
nnoremap <silent> s            :bnext<cr>
nnoremap <silent> <c-s>        :bdelete<cr>
nnoremap <silent> <space><c-s> :bdelete!<cr>

" Windows
nnoremap <left>  <c-w><
nnoremap <down>  <c-w>+
nnoremap <up>    <c-w>-
nnoremap <right> <c-w>>

" Good with virtualedit=block.
vnoremap <c-h> hoho
vnoremap <c-j> jojo
vnoremap <c-k> koko
vnoremap <c-l> lolo

" Substitute highlighted.
nnoremap <space>s :%s///g<left><left>
vnoremap <space>s :s///g<left><left>

" Open netrw and put cursor on current file.
nnoremap <silent> - :let @/='\C^'.expand('%:t')<cr>:E<cr>n:nohl<cr>

" Run last command in last tmux pane.
nnoremap <silent> <cr> :call system('tmux send-keys -t {last} ^c ^l ^p Enter &')<cr>

" Gofmt formats the current buffer.
function! Gofmt()
	call system('goimports', getline(1, '$'))
	if v:shell_error != 0
		return
	endif
	let l:view = winsaveview()
	silent %!goimports
	call winrestview(l:view)
endfunction
autocmd! BufWritePre *.go call Gofmt()
