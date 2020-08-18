call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
call plug#end()

let g:ale_linters = {
\   'python': ['mypy'],
\   'markdown': [],
\   'asm': [],
\}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'python': ['black'],
\   'markdown': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\}

let g:highlightedyank_highlight_duration = 150

let mapleader=" "
nnoremap Y y$
nnoremap <Esc> :nohl<CR><C-l>
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>r :%s///g<Left><Left>
vnoremap <Leader>r :s///g<Left><Left>
nnoremap <C-p> :Files<CR>
nmap <silent> <C-{> <Plug>(ale_previous_wrap)
nmap <silent> <C-}> <Plug>(ale_next_wrap)
tnoremap <Esc> <C-\><C-n>
nnoremap <Leader>g :GitGutterToggle<CR>

syntax on
colorscheme dim
highlight clear SignColumn
highlight HighlightedyankRegion ctermbg=Yellow
set noswapfile nobackup nowritebackup updatetime=0
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set incsearch ignorecase smartcase
set nowrap hidden laststatus=0
set number relativenumber
set clipboard=unnamed
set mouse=a

autocmd Filetype markdown setlocal ts=2 sts=2 sw=2 commentstring=<!--\ %s\ -->
autocmd FileType asm setlocal commentstring=#\ %s
