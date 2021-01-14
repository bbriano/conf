call plug#begin('~/.vim/plugged')
Plug 'dstein64/vim-startuptime'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'masukomi/vim-markdown-folding'
Plug 'michaeljsmith/vim-indent-object'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
call plug#end()

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:ip_skipfold = 1
let g:neoformat_only_msg_on_error = 1
let g:netrw_banner = 0
let g:python_highlight_space_errors = 0
let g:vim_markdown_new_list_item_indent = 0

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
set completeopt=menuone,noinsert,noselect
set shortmess=I

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

command! W w
nnoremap Y y$
nnoremap * *N
vnoremap p "_dP
nnoremap <silent> <esc> :nohl<CR><C-L>
nnoremap S :bprevious<CR>
nnoremap s :bnext<CR>

vnoremap <C-h> hoho
vnoremap <C-j> jojo
vnoremap <C-k> koko
vnoremap <C-l> lolo
nnoremap <C-d> <C-d>
nnoremap <C-u> <C-u>
nnoremap <C-d> 18j
nnoremap <C-u> 18k

let mapleader = " "
nnoremap <leader>V :edit ~/.config/nvim/init.vim<CR>
nnoremap <leader>S :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>l :buffer #<CR>
nnoremap <leader>x :bdelete<CR>
nnoremap <leader>d :bnext \| bdelete #<CR>
nnoremap <leader>s :%s///g<left><left>
vnoremap <leader>s :s///g<left><left>
nnoremap <leader>qq :s/\. /\.\r/g<CR>
nnoremap <leader>iso :r !date -u +"\%Y-\%m-\%d"<CR>

" FZF
nnoremap <C-p> :Files<CR>
nnoremap <C-n> :Files ~/n<CR>
nnoremap <C-s> :Buffers<CR>
nnoremap <leader>f :Files %:h<CR>
nnoremap <leader>/ :Rg<CR>
nnoremap <leader>h :Help<CR>

" LSP
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
    autocmd BufWritePre * call TrimWhiteSpace() | undojoin | Neoformat
    autocmd BufWritePre *.go lua format_go(100)
    autocmd BufEnter * lua require'completion'.on_attach()
augroup END

function! TrimWhiteSpace()
    let l:view = winsaveview()
    %s/\s\+$//e    " per line
    %s/\n\+\%$//e  " EOF
    call winrestview(l:view)
endfunction

lua require("lsp")
