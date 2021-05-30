call plug#begin('~/.vim/plugged')
Plug 'bbriano/neoformat'
Plug 'dstein64/vim-startuptime'
Plug 'honza/vim-snippets'
Plug 'hrsh7th/nvim-compe'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'neovim/nvim-lspconfig'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
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

" LSP
nnoremap [g :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]g :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap gt :lua vim.lsp.buf.type_definition()<CR>
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>lr :LspRestart<CR>

" Neoformat
let g:neoformat_only_msg_on_error = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_basic_format_trim_newline = 1

" Ultisnips
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"

colorscheme peachpuff
highlight VertSplit ctermfg=0 cterm=NONE
highlight StatusLine ctermbg=8 cterm=NONE
highlight StatusLineNC ctermbg=0 cterm=NONE
highlight Visual ctermbg=NONE
highlight Visual ctermbg=8 cterm=NONE
highlight Search ctermbg=NONE ctermfg=3 cterm=reverse
highlight IncSearch ctermfg=5
highlight LineNr ctermfg=8
highlight Todo ctermbg=NONE ctermfg=NONE cterm=bold
highlight Folded ctermbg=NONE ctermfg=8
highlight Pmenu ctermbg=0 ctermfg=7
highlight PmenuSbar ctermbg=0
highlight PmenuSel ctermbg=8 ctermfg=7
highlight PmenuThumb ctermbg=8
highlight SignColumn ctermbg=NONE

command! W w
command! Q q

augroup BRIANO
    autocmd!
    autocmd BufRead,BufNewFile *.tex setlocal filetype=tex
    autocmd BufWritePre * undojoin | Neoformat
    autocmd BufWritePre *.go undojoin | Neoformat goimports
    autocmd BufWritePre *.md undojoin | Neoformat prettier
    autocmd BufWritePre *.rs undojoin | Neoformat rustfmt
augroup END

lua require('lsp')
