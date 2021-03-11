" Plug {{{
call plug#begin('~/.vim/plugged')
Plug 'chiel92/vim-autoformat'
Plug 'dstein64/vim-startuptime'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'masukomi/vim-markdown-folding'
Plug 'michaeljsmith/vim-indent-object'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
call plug#end()
" }}}

" Lua {{{
lua require("lsp")
" }}}

" Let {{{
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:ip_skipfold = 1
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
let g:netrw_list_hide = '^\.\.\?\/$'
" }}}

" Colorscheme {{{
colorscheme peachpuff
highlight VertSplit cterm=NONE
highlight Visual ctermbg=NONE
highlight Search ctermfg=0
highlight IncSearch ctermfg=5
highlight LineNr ctermfg=8
highlight Todo ctermbg=NONE ctermfg=NONE cterm=bold
highlight Folded ctermbg=NONE ctermfg=8
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

nnoremap <leader>V   :edit ~/.config/nvim/init.vim<CR>
nnoremap <leader>S   :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>l   :buffer #<CR>
nnoremap <leader>x   :bdelete<CR>
nnoremap <leader>d   :bnext \| bdelete #<CR>
nnoremap <leader>s   :%s///g<left><left>
vnoremap <leader>s   :s///g<left><left>
nnoremap <leader>qq  :s/\. /\.\r/g<CR>
nnoremap <leader>iso :r !date -u +"\%Y-\%m-\%d"<CR>
nnoremap <leader>fn  :put =expand('%:t')<CR>

" FZF
nnoremap <C-p>      :Files<CR>
nnoremap <C-n>      :Files ~/n<CR>
nnoremap <C-s>      :Buffers<CR>
nnoremap <leader>ff :Files %:h<CR>
nnoremap <leader>/  :Rg<CR>
nnoremap <leader>h  :Help<CR>

" LSP
nnoremap <C-k>      :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <C-j>      :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap gd         :lua vim.lsp.buf.definition()<CR>
nnoremap gr         :lua vim.lsp.buf.references()<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap K          :lua vim.lsp.buf.hover()<CR>
" }}}

" Commands {{{
command! W w
command! Q q
" }}}

" Autocommands {{{
augroup BRIANO
    autocmd!
    autocmd Filetype markdown setlocal commentstring=<!--\ %s\ -->
    autocmd Filetype vim setlocal foldmethod=marker
    autocmd Filetype go setlocal noexpandtab
    autocmd BufEnter * lua require'completion'.on_attach()
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

" Autoformat {{{
let g:formatters_md = ['prettier']
augroup AUTOFORMAT
    autocmd BufWrite *.go silent Autoformat
    autocmd BufWrite *.java silent Autoformat
    " autocmd BufWrite *.md silent Autoformat
augroup END
" }}}

" Ultisnips {{{
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
" }}}
