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

" fzf
nnoremap <C-p> :Files<CR>

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
nmap <Leader>/ <plug>NERDCommenterToggle

" ALE
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'python': ['mypy'],
\   'markdown': [],
\   'asm': [],
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
nnoremap <silent> <C-k> <Plug>(ale_previous_wrap)
nnoremap <silent> <C-j> <Plug>(ale_next_wrap)

" Vim Gutter
set updatetime=100

" Mappings
let mapleader=" "
nnoremap <C-l> :nohl<CR><C-l>
nnoremap <Leader><Leader> <C-^>

" Commands
command! Vimrc :e $MYVIMRC
command! Zshrc :e ~/.zshrc
command! TmuxConf :e ~/.tmux.conf
command! Notes :e ~/n/notes/

" Basics
syntax on
colorscheme dim
highlight clear SignColumn
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
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

" Overwrites
autocmd Filetype markdown setlocal ts=2 sts=2 sw=2
