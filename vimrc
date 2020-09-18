set noswapfile
set expandtab softtabstop=-1 shiftwidth=4
set incsearch ignorecase smartcase
set hidden
set nowrap
set signcolumn=yes
set laststatus=1
set guicursor=
set mouse=a

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'michaeljsmith/vim-indent-object'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
call plug#end()
let g:netrw_banner = 0
let g:netrw_list_hide = '^\.\.\?\/$'
let g:python_highlight_space_errors = 0
let g:vim_markdown_new_list_item_indent = 0
let g:highlightedyank_highlight_duration = 150
let g:gruvbox_invert_selection = 0

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

autocmd FileType asm setlocal commentstring=#\ %s
autocmd Filetype cpp setlocal commentstring=//\ %s
autocmd Filetype markdown setlocal commentstring=<!--\ %s\ --> sw=2

colorscheme gruvbox
highlight Normal ctermbg=NONE
highlight VertSplit ctermbg=NONE
highlight SignColumn ctermbg=NONE
