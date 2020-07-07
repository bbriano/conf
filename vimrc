syntax on

"set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
"set nowrap
set smartcase
set noswapfile
"set nobackup
"set undodir=~/.vim/undodir
"set undofile
set incsearch
set laststatus=0

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <C-p> :Files<CR>

