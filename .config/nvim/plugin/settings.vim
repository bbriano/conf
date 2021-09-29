" Never create swap files.
set noswapfile

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

" Forgot why I set this.
" set updatetime=150

" Always show menu, even if there is only one match.
set completeopt=menuone

" Hide line and column number is status line.
set noruler

" No tilde filler chars at end of buffer and blank vertical split.
set fillchars=eob:\ ,vert:\ ,

" Save undo history to undo file on write.
set undofile
