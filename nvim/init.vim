call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'sheerun/vim-polyglot'
call plug#end()

let mapleader=" "
nnoremap <Esc> :nohl<CR><C-l>
noremap <Leader>p :Files<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>vimrc :e $MYVIMRC<CR>
nnoremap <Leader>zshrc :e ~/.zshrc<CR>
nnoremap <Leader>notes :e ~/n/notes/<CR>

" ALE
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'python': ['mypy'],
\   'markdown': [],
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
set mouse=a
set hidden

autocmd Filetype markdown setlocal ts=2 sts=2 sw=2
