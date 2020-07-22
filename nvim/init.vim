call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

map CommandS :w<CR>
map CommandL :nohl<CR><C-l>
map CommandP :Files<CR>
map CommandSlash <plug>NERDCommenterToggle

filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

syntax on
colorscheme ThemerVim

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
set relativenumber
set laststatus=0

