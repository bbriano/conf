" Plug {{{
call plug#begin('~/.vim/plugged')
Plug 'dstein64/vim-startuptime'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'neoclide/coc.nvim'
Plug 'sbdchd/neoformat'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
call plug#end()
" }}}

" Let {{{
let g:ip_skipfold = 1
let g:markdown_folding = 1
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
let g:netrw_list_hide = '^\.\.\?\/$'
" }}}

" Set {{{
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

" Maps {{{
let mapleader = ' '

nnoremap Q <nop>
nnoremap Y y$
nnoremap <expr> * 'mm:%s/\<'.expand('<cword>').'\>//gn<CR>`m'
vnoremap p "_dP
nnoremap S :bprevious<CR>
nnoremap s :bnext<CR>

nnoremap <silent> <esc>   :nohl<CR><C-L>
nnoremap <silent> <down>  :resize +1<CR>
nnoremap <silent> <up>    :resize -1<CR>
nnoremap <silent> <right> :vertical resize +1<CR>
nnoremap <silent> <left>  :vertical resize -1<CR>

" Disable {} tracking in jumplist
nnoremap } :keepjumps normal! }<CR>
nnoremap { :keepjumps normal! {<CR>
vnoremap } :<C-u>keepjumps normal! gv}<CR>
vnoremap { :<C-u>keepjumps normal! gv{<CR>

vnoremap <C-h> hoho
vnoremap <C-j> jojo
vnoremap <C-k> koko
vnoremap <C-l> lolo

nnoremap <leader>S        :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>l        :buffer #<CR>
nnoremap <leader>x        :bdelete<CR>
nnoremap <leader>d        :bnext \| bdelete #<CR>
nnoremap <leader>s        :%s///g<left><left>
vnoremap <leader>s        :s///g<left><left>
nnoremap <leader>qq       :s/\. /\.\r/g<CR>
nnoremap <leader>fn       :put =expand('%:t')<CR>
vnoremap <leader>p        yPgv:!python3<CR>

" FZF
nnoremap <C-p>      :Files<CR>
nnoremap <C-n>      :Files ~<CR>
nnoremap <C-s>      :Buffers<CR>
nnoremap <leader>ff :Files %:h<CR>
nnoremap <leader>/  :Rg<CR>
nnoremap <leader>h  :Help<CR>

" CoC
nmap <silent> [g <plug>(coc-diagnostic-prev)
nmap <silent> ]g <plug>(coc-diagnostic-next)
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gy <plug>(coc-type-definition)
nmap <silent> gi <plug>(coc-implementation)
nmap <silent> gr <plug>(coc-references)
nmap <leader>rn <plug>(coc-rename)
nmap <leader>cr :CocRestart<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>
" }}}

" Commands {{{
command! W w
command! Q q

augroup BRIANO
    autocmd!
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

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction
" }}}

" Colorscheme {{{
colorscheme peachpuff
highlight VertSplit ctermfg=0 cterm=NONE
highlight StatusLine ctermbg=8 cterm=NONE
highlight StatusLineNC ctermbg=0 cterm=NONE
highlight Visual ctermbg=NONE
highlight Search ctermbg=NONE ctermfg=3 cterm=reverse
highlight IncSearch ctermfg=5
highlight LineNr ctermfg=8
highlight Todo ctermbg=NONE ctermfg=NONE cterm=bold
highlight Folded ctermbg=NONE ctermfg=8
highlight Pmenu ctermbg=0 ctermfg=7
highlight PmenuSbar ctermbg=0
highlight PmenuSel ctermbg=8 ctermfg=7
highlight PmenuThumb ctermbg=8
" }}}

" Neoformat {{{
let g:neoformat_only_msg_on_error = 1
augroup NEOFORMAT
    autocmd BufWritePre *.go Neoformat goimports
    " autocmd BufWritePre *.java Neoformat astyle
    autocmd BufWritePre *.md Neoformat prettier
    autocmd BufWritePre *.json Neoformat prettier
    autocmd BufWritePre *.js Neoformat prettier
    autocmd BufWritePre *.jsx Neoformat prettier
    autocmd BufWritePre *.ts Neoformat prettier
    autocmd BufWritePre *.tsx Neoformat prettier
augroup END
" }}}

" Ultisnips {{{
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
" }}}
