call plug#begin(stdpath('data') . '/plugged')
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

let g:markdown_folding = 1                              " Use markdown headings for fold levels.
let g:netrw_dirhistmax = 0                              " Don't create .netrwhist files.

command! W w
command! Q q
