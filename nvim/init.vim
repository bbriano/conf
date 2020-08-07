call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

let mapleader=" "
nnoremap <Esc> :nohl<CR><C-l>
nnoremap <Leader><Leader> <C-^>
noremap CommandP :Files<CR>
map CommandSlash <plug>NERDCommenterToggle
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" NERDCommenter
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

" ALE
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'python': ['mypy'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'javascript': ['prettier'],
\   'markdown': ['prettier'],
\   'python': ['black'],
\}

" Vim Gutter
set updatetime=100

syntax on
colorscheme dim
highlight clear SignColumn

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set incsearch
set laststatus=0
set relativenumber
set ignorecase

autocmd Filetype markdown setlocal ts=2 sts=2 sw=2
