call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'masukomi/vim-markdown-folding'
Plug 'michaeljsmith/vim-indent-object'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

let g:netrw_banner = 0
let g:python_highlight_space_errors = 0
let g:vim_markdown_new_list_item_indent = 0
let g:ip_skipfold = 1
let mapleader=" "

set noswapfile
set expandtab tabstop=4 softtabstop=-1 shiftwidth=4
set incsearch ignorecase smartcase
set hidden
set nowrap
set number
set signcolumn=no
set laststatus=1
set guicursor=
set foldmethod=indent foldlevel=99

" General
nnoremap Y y$
nnoremap * *N
vnoremap p "_dP
nnoremap <silent> <esc> :nohl<CR><C-L><plug>(coc-float-hide)
nnoremap <leader>s :%s///g<left><left>
vnoremap <leader>s :s///g<left><left>
nnoremap <leader>q :s/\. /\.\r/g<CR>
nnoremap <leader>iso :r !date -u +"\%Y-\%m-\%d"<CR>
nnoremap <leader>w :silent !prettier --prose-wrap never --write %<CR>

" Buffers
nnoremap S :bprevious<CR>
nnoremap s :bnext<CR>
nnoremap <leader>p :bprevious<CR>
nnoremap <leader>n :bnext<CR>
nnoremap <leader>l :buffer #<CR>
nnoremap <leader>d :bnext \| :bdelete #<CR>
nnoremap <leader>x :bdelete<CR>

" FZF
nnoremap <c-p> :Files<CR>
nnoremap <c-n> :Files ~/n<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>/ :Rg<CR>
nnoremap <leader>h :Helptags<CR>

" CoC
nmap <leader>cr :CocRestart<CR>
nmap <silent> <C-k> <plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <plug>(coc-diagnostic-next)
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gr <plug>(coc-references)
nmap <silent> <leader>rn <plug>(coc-rename)
nmap <silent> K :call <SID>show_documentation()<CR>

command! W w
autocmd! FileType asm setlocal commentstring=#\ %s
autocmd! Filetype markdown setlocal commentstring=<!--\ %s\ --> sw=2
autocmd! Filetype go setlocal noexpandtab
autocmd! BufWritePre * call RemoveTrailingWhitespace()

colorscheme peachpuff
highlight StatusLine ctermbg=15 ctermfg=8
highlight StatusLineNC ctermbg=15 ctermfg=0
highlight VertSplit ctermfg=0 cterm=NONE
highlight Pmenu ctermbg=0 ctermfg=15
highlight PmenuSel ctermbg=8 ctermfg=15
highlight PmenuSbar ctermbg=0
highlight PmenuThumb ctermbg=8
highlight Visual ctermbg=8 cterm=NONE
highlight CursorLine ctermbg=0 cterm=NONE
highlight Search ctermfg=0
highlight IncSearch ctermfg=9
highlight LineNr ctermfg=8
highlight Todo ctermbg=NONE ctermfg=NONE cterm=bold
highlight Folded ctermbg=NONE ctermfg=8

" Show vim doc else coc hover
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Remove trailing whitespace
function! RemoveTrailingWhitespace()
    let cursor_pos = getpos(".")
    %s/\s\+$//e    " per line
    %s/\n\+\%$//e  " EOF
    call setpos(".", cursor_pos)
endfunction
