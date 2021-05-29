call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'dstein64/vim-startuptime'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
call plug#end()

let g:ip_skipfold = 1
let g:markdown_folding = 1
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
let g:netrw_list_hide = '^\.\.\?\/$'

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
nnoremap <silent> } :execute "keepjumps norm! " . v:count1 . "}"<CR>
nnoremap <silent> { :execute "keepjumps norm! " . v:count1 . "{"<CR>

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

" Ultisnips
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"

" ALE
let g:ale_completion_enabled = 1
nmap <silent> [g <Plug>(ale_previous_wrap)
nmap <silent> ]g <Plug>(ale_next_wrap)
nmap <silent> gd <plug>(ale_go_to_definition)
nmap <silent> gr <plug>(ale_find_references)
nmap <silent> gh <plug>(ale_hover)
nmap <leader>rn <plug>(ale_rename)
nmap <leader>cr <plug>(ale_reset)
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'markdown': ['prettier'],
\   'go': ['gofmt'],
\   'rust': ['rustfmt'],
\}
" \   '*': ['remove_trailing_lines', 'trim_whitespace'], -- Double write if use this

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
highlight ALEError ctermfg=1 cterm=underline
highlight ALEWarning cterm=underline

command! W w
command! Q q

augroup BRIANO
    autocmd!
    autocmd BufWritePre * call TrimWhiteSpace()
augroup END

function! TrimWhiteSpace()
    let l:view = winsaveview()
    %s/\s\+$//e    " per line
    %s/\n\+\%$//e  " EOF
    call winrestview(l:view)
endfunction
