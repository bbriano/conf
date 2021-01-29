" Let {{{
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
let g:netrw_list_hide = '^\.\.\?\/$'
" }}}

" Colorscheme {{{
colorscheme peachpuff
highlight VertSplit cterm=NONE
highlight Visual ctermbg=NONE
highlight CursorLine ctermbg=0 cterm=NONE
highlight Search ctermfg=0
highlight IncSearch ctermfg=9
highlight LineNr ctermfg=8
highlight Todo ctermbg=NONE ctermfg=NONE cterm=bold
highlight Folded ctermbg=NONE ctermfg=8
" }}}

" Set {{{
syntax on
set noswapfile
set expandtab tabstop=4 softtabstop=-1 shiftwidth=4
set incsearch ignorecase smartcase
set hidden
set nowrap
set signcolumn=no
set laststatus=1
set guicursor=
set foldmethod=indent foldlevel=99
set completeopt=menuone,noinsert,noselect
set shortmess=I
" }}}

" Mappings {{{
let mapleader = ' '

nnoremap Q <nop>
nnoremap Y y$
nnoremap * *N
vnoremap p "_dP
nnoremap S :bprevious<CR>
nnoremap s :bnext<CR>

nnoremap <silent> <esc>   :nohl<CR><C-L>
nnoremap <silent> <down>  :resize +1<CR>
nnoremap <silent> <up>    :resize -1<CR>
nnoremap <silent> <right> :vertical resize +1<CR>
nnoremap <silent> <left>  :vertical resize -1<CR>

vnoremap <C-h> hoho
vnoremap <C-j> jojo
vnoremap <C-k> koko
vnoremap <C-l> lolo

nnoremap <leader>V   :edit ~/.vimrc<CR>
nnoremap <leader>S   :source ~/.vimrc<CR>
nnoremap <leader>l   :buffer #<CR>
nnoremap <leader>x   :bdelete<CR>
nnoremap <leader>d   :bnext \| bdelete #<CR>
nnoremap <leader>s   :%s///g<left><left>
vnoremap <leader>s   :s///g<left><left>
nnoremap <leader>qq  :s/\. /\.\r/g<CR>
nnoremap <leader>iso :r !date -u +"\%Y-\%m-\%d"<CR>
nnoremap <leader>fn  :put =expand('%:t')<CR>
" }}}

" Commands {{{
command! W w
command! Q q
" }}}

" Autocommands {{{
augroup BRIANO
    autocmd!
    autocmd Filetype vim setlocal foldmethod=marker
    autocmd Filetype go setlocal noexpandtab
    autocmd BufWritePre * call TrimWhiteSpace()
augroup END
" }}}

" Functions {{{
function! TrimWhiteSpace()
    let l:view = winsaveview()
    %s/\s\+$//e    " per line
    %s/\n\+\%$//e  " EOF
    call winrestview(l:view)
endfunction
" }}}
