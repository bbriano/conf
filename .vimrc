call plug#begin()
Plug 'bling/vim-bufferline'
Plug 'cespare/vim-sbd'
Plug 'dstein64/vim-startuptime'
Plug 'duggiefresh/vim-easydir'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'justinmk/vim-dirvish'
Plug 'justinmk/vim-ipmotion'
Plug 'ludovicchabant/vim-gutentags'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'wincent/ferret'
call plug#end()

filetype indent off
syntax enable

set noswapfile					" Never create swap files.
set softtabstop=-1				" match to value of shiftwidth.
set incsearch ignorecase smartcase hlsearch
set hidden					" Allow not showing unwritten buffers.
set nowrap
set foldmethod=indent foldlevel=99
set shortmess=I					" Don't show intro screen on startup.
set shortmess+=O				" File info or quickfix message overwrites previous message.
set shortmess+=F				" Never show file info when opening a file.
set nojoinspaces				" Don't add double space after .?! when using :j.
set virtualedit=block				" Allow the cursor in position where there is no text in visual block mode.
set completeopt=menuone,noinsert,noselect	" Always show menu, do not auto insert and do not auto select.
set undofile undodir=~/.vimundo			" Save undo history to undo file on write.
set backspace=indent,eol,start			" Not being an doofus.
set ttimeoutlen=0				" Exit out of visual mode instantly.
set autoindent					" Match indent with previous line.
set fillchars=vert:│				" Cleaner than.
if has('patch2508') | set fillchars+=eob:\ , | endif " No tilde filler chars at end of buffer.

let g:netrw_dirhistmax = 0			" Don't create .netrwhist files.

command! W w
command! Q q
command! Diff w !diff % -			" Diff current file with current buffer.

augroup BRIANO
	autocmd!
	autocmd BufWritePre * call briano#Format()
augroup END
