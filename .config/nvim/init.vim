call plug#begin()
Plug 'cespare/vim-sbd'
Plug 'dstein64/vim-startuptime'
Plug 'duggiefresh/vim-easydir'
Plug 'hrsh7th/nvim-compe'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'justinmk/vim-dirvish'
Plug 'justinmk/vim-ipmotion'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'neovim/nvim-lspconfig'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'wincent/ferret'
call plug#end()

set noswapfile                                          " Never create swap files.
set softtabstop=-1                                      " Only in effect when expandtab is set.
set incsearch ignorecase smartcase
set hidden                                              " Allow not showing unwritten buffers.
set nowrap
set signcolumn=no                                       " Never show the sign column (gutter).
set laststatus=1                                        " No status line when only one window open.
set guicursor=                                          " Don't use different cursor styles in different modes.
set foldmethod=indent foldlevel=99
set shortmess=I                                         " Don't show intro screen on startup.
set shortmess+=O                                        " File info or quickfix message overwrites previous message.
set shortmess+=F                                        " Never show file info when opening a file.
set nojoinspaces                                        " Don't add double space after .?! when using :j.
set virtualedit=block                                   " Allow the cursor in position where there is no text in visual block mode.
set updatetime=150
set completeopt=menuone,noinsert,noselect               " Always show menu, do not auto insert and do not auto select.
set noruler                                             " Hide line and column number is status line.
set fillchars=eob:\ ,                                   " No tilde filler chars at end of buffer.
set undofile                                            " Save undo history to undo file on write.

let g:markdown_folding = 1                              " Use markdown headings for fold levels.
let g:netrw_dirhistmax = 0                              " Don't create .netrwhist files.

command! W w
command! Q q
