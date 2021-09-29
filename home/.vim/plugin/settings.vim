" Never create swap files.
set noswapfile

" Not too smol not too BIIG.
set tabstop=4 shiftwidth=4

" Only in effect when expandtab is set.
set softtabstop=-1

" Reasonable.
set incsearch ignorecase smartcase

" Allow not showing unwritten buffers.
set hidden

" That's your job.
set nowrap

" Never show the sign column (gutter).
set signcolumn=no

" No status line when only one window open.
set laststatus=1

" Don't use different cursor styles in different modes.
set guicursor=n-v-c:block

" Indent-based folding and start with everything unfolded.
set foldmethod=indent foldlevel=99

" Don't show intro screen on startup.
set shortmess=I

" File info or quickfix message overwrites previous message.
set shortmess+=O

" Never show file info when opening a file.
set shortmess+=F

" Don't add double space after .?! when using :j.
set nojoinspaces

" Allow the cursor in position where there is no text in visual block mode.
set virtualedit=block

" Remove delay when exiting visual mode.
set ttimeoutlen=0

" Always show menu, even if there is only one match.
set completeopt=menuone

" Hide line and column number is status line.
set noruler

" Blank vertical split.
set fillchars=vert:\ ,

" Hide tilde filler chars at end of buffer.
if has('patch2508')
	set fillchars+=eob:\ ,
endif

" Safe undo's over Vim sessions.
set undofile
set undodir=~/.vim/backup

" Allow backspacing over the start of insert.
set backspace=eol,start
