call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'masukomi/vim-markdown-folding'
Plug 'michaeljsmith/vim-indent-object'
Plug 'neoclide/coc.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
call plug#end()
let g:netrw_banner = 0
let g:python_highlight_space_errors = 0
let g:vim_markdown_new_list_item_indent = 0
let g:ip_skipfold = 1

let mapleader=" "
nmap Y y$
nmap <silent> <Esc> :nohl<CR><C-L>
tmap <Esc> <C-\><C-N>
nmap <Leader>s :%s///g<Left><Left>
vmap <Leader>s :s///g<Left><Left>
nmap <Leader><Leader> :buffer #<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
nmap <Leader>d :bdelete<CR>
vmap <silent> <C-j> :move '>+1<CR>gv=gv
vmap <silent> <C-k> :move '<-2<CR>gv=gv
vmap <silent> <C-j> :move '>+1<CR>gv
vmap <silent> <C-k> :move '<-2<CR>gv
nmap <C-p> :Files<CR>
nmap <C-n> :Files ~/n<CR>
nmap <Leader>/ :Rg<CR>
nmap <Leader>h :Helptags<CR>
nmap <Leader>cr :CocRestart<CR>
nmap <silent> <C-j> :call CocAction('diagnosticNext')<CR>
nmap <silent> <C-k> :call CocAction('diagnosticPrevious')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn <Plug>(coc-rename)
nmap <Leader>iso :r !date -u +"\%Y-\%m-\%d"<CR>
nmap <Leader>pp :!pngpaste img/

set noswapfile
set expandtab softtabstop=-1 shiftwidth=4
set incsearch ignorecase smartcase
set hidden
set nowrap
set signcolumn=no
set laststatus=1
set guicursor=
set mouse=a
set foldmethod=indent foldlevel=99

autocmd! BufWritePre * :%s/\s\+$//e
autocmd! FileType asm setlocal commentstring=#\ %s
autocmd! Filetype markdown setlocal commentstring=<!--\ %s\ --> sw=2
autocmd! TextYankPost * lua vim.highlight.on_yank()

highlight StatusLine ctermbg=15 ctermfg=8
highlight StatusLineNC ctermbg=15 ctermfg=0
highlight VertSplit ctermfg=0 cterm=NONE
highlight Pmenu ctermbg=0 ctermfg=15
highlight PmenuSel ctermbg=8 ctermfg=15
highlight PmenuSbar ctermbg=0
highlight PmenuThumb ctermbg=8
highlight CursorLine ctermbg=0 cterm=NONE
highlight IncSearch ctermfg=9
highlight Todo ctermbg=NONE ctermfg=15 cterm=bold
highlight LineNr ctermfg=8
highlight Folded ctermbg=NONE ctermfg=8
highlight Comment ctermfg=4
