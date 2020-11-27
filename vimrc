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

nmap Y y$
vmap p "_dP
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
nnoremap ctrl_i <C-i>
nmap <Leader>s :%s///g<Left><Left>
vmap <Leader>s :s///g<Left><Left>
nmap <leader>q :s/\. /\.\r/g<CR>
nmap <Leader><Leader> :buffer #<CR>
nmap <Leader>d :bnext \| :bdelete #<CR>
nmap <Leader>x :bdelete<CR>
nmap <Leader>iso :r !date -u +"\%Y-\%m-\%d"<CR>
nmap <Leader>np :silent !prettier --prose-wrap never --write %<CR>

" FZF
nmap <C-n> :Buffers<CR>
nmap <C-p> :Files<CR>
nmap <Leader>f :Files ~/n<CR>
nmap <Leader>/ :Rg<CR>
nmap <Leader>h :Helptags<CR>

" CoC
nmap <Leader>cr :CocRestart<CR>
nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh :call CocAction('doHover')<CR>
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> <Esc> :nohl<CR><Plug>(coc-float-hide)

command! W w
autocmd! FileType asm setlocal commentstring=#\ %s
autocmd! Filetype markdown setlocal commentstring=<!--\ %s\ --> sw=2
autocmd! Filetype go setlocal noexpandtab
autocmd! BufWritePre * call RemoveTrailingWhitespace()
autocmd! BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

function! RemoveTrailingWhitespace()
    let cursor_pos = getpos(".")
    %s/\s\+$//e    " Remove trailing whitespace per line
    %s/\n\+\%$//e  " Remove trailing newlines in end of file
    call setpos(".", cursor_pos)
endfunction

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
