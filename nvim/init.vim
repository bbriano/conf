call plug#begin('~/.vim/plugged')
Plug 'bbriano/neoformat'
Plug 'dense-analysis/ale'
Plug 'dstein64/vim-startuptime'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } | Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'justinmk/vim-dirvish'
Plug 'justinmk/vim-ipmotion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'shougo/deoplete.nvim'
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
call plug#end()

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
set shortmess+=F
set nojoinspaces
set virtualedit=block
set updatetime=150
set grepprg=rg\ --vimgrep

let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:ip_skipfold = 1
let g:markdown_folding = 1

command! W w
command! Q q
command! E Dirvish
command! PU PlugUpdate | PlugUpgrade

augroup BRIANO
    autocmd!
    " autocmd VimEnter * StartupTime
    " autocmd VimEnter * only
augroup END
