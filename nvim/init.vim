call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'masukomi/vim-markdown-folding'
Plug 'michaeljsmith/vim-indent-object'
Plug 'neovim/nvim-lspconfig'
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
let mapleader = " "

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

nnoremap Y y$
nnoremap * *N
vnoremap p "_dP
vnoremap <c-h> hoho
vnoremap <c-j> jojo
vnoremap <c-k> koko
vnoremap <c-l> lolo
nnoremap <silent> <esc> :nohl<CR><C-L>
nnoremap <leader>s :%s///g<left><left>
vnoremap <leader>s :s///g<left><left>
nnoremap <leader>qq :s/\. /\.\r/g<CR>
nnoremap <leader>iso :r !date -u +"\%Y-\%m-\%d"<CR>
command! W w

" Buffers
nnoremap S :bprevious<CR>
nnoremap s :bnext<CR>
nnoremap <leader>l :buffer #<CR>
nnoremap <leader>x :bdelete<CR>

" FZF
nnoremap <c-p> :Files<CR>
nnoremap <c-n> :Files ~/n<CR>
nnoremap <c-s> :Buffers<CR>
nnoremap <leader>/ :Rg<CR>
nnoremap <leader>h :Helptags<CR>

" LSP
lua << EOF
require'lspconfig'.gopls.setup{}
EOF
nnoremap <C-k> :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <C-j> :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>

augroup BRIANO
    autocmd!
    autocmd Filetype markdown setlocal commentstring=<!--\ %s\ --> sw=2
    autocmd Filetype go setlocal noexpandtab
    autocmd BufWritePre * call RemoveTrailingWhitespace()
    autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
augroup END

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

function! RemoveTrailingWhitespace()
    let l:view = winsaveview()
    %s/\s\+$//e    " per line
    %s/\n\+\%$//e  " EOF
    call winrestview(l:view)
endfunction
