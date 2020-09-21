call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'machakann/vim-highlightedyank'
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
let g:highlightedyank_highlight_duration = 150

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
nmap <Leader>pp :!pngpaste img/

set noswapfile
set expandtab softtabstop=-1 shiftwidth=4
set incsearch ignorecase smartcase
set hidden
set nowrap
set number signcolumn=number
set laststatus=1
set guicursor=
set mouse=a
set foldmethod=indent

autocmd! TermOpen * setlocal nonumber
autocmd! BufWritePre * :%s/\s\+$//e
autocmd! FileType asm setlocal commentstring=#\ %s
autocmd! Filetype markdown setlocal commentstring=<!--\ %s\ --> sw=2 fdm=manual

colorscheme peachpuff
hi SignColumn ctermbg=NONE ctermfg=7
hi StatusLine ctermbg=7 ctermfg=8
hi StatusLineNC ctermbg=7 ctermfg=0
hi VertSplit ctermbg=0 ctermfg=0
hi Pmenu ctermbg=0 ctermfg=7
hi PmenuSel ctermbg=8 ctermfg=7
hi PmenuSbar ctermbg=0
hi PmenuThumb ctermbg=8
hi CursorLine ctermbg=0 cterm=NONE
hi Visual ctermbg=8 cterm=NONE
hi Search ctermbg=11 ctermfg=0
hi IncSearch ctermbg=9 ctermfg=0 cterm=NONE
hi Todo ctermbg=NONE ctermfg=7 cterm=bold
hi LineNr ctermfg=8
hi CursorLineNr ctermfg=7
hi Folded ctermbg=NONE
