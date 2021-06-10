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

set noswapfile                                          " Never create swap files.
set expandtab tabstop=4 softtabstop=-1 shiftwidth=4
set incsearch ignorecase smartcase
set hidden                                              " Allow not showing unwritten buffers.
set nowrap
set signcolumn=no                                       " Never show the sign column (gutter).
set laststatus=1                                        " No status line when only one window open.
set guicursor=                                          " Don't use different cursor styles in different modes.
set foldmethod=indent foldlevel=99
set shortmess=I                                         " Don't show intro screen on startup.
set shortmess+=O                                        " File info or quickfix message overwrites previous message.
set nojoinspaces                                        " Don't add double space after .?! when using :j.
set virtualedit=block                                   " Allow the cursor in position where there is no text in visual block mode.
set updatetime=150
set grepprg=rg\ --vimgrep

let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:ip_skipfold = 1                                   " Makes { and } skips empty lines in closed folds.
let g:markdown_folding = 1                              " Use markdown headings for fold levels.

command! W w
command! Q q
command! PU PlugUpdate | PlugUpgrade
command! -nargs=? -complete=dir Explore Dirvish <args>
command! -nargs=? -complete=dir Sexplore split | silent Dirvish <args>
command! -nargs=? -complete=dir Vexplore vsplit | silent Dirvish <args>
