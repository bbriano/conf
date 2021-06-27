packadd! ferret
packadd! fzf
packadd! fzf.vim
packadd! gv.vim
packadd! nvim-compe
packadd! nvim-lspconfig
packadd! ultisnips
packadd! vim-commentary
packadd! vim-dirvish
packadd! vim-dispatch
packadd! vim-eunuch
packadd! vim-fugitive
packadd! vim-ipmotion
packadd! vim-repeat
packadd! vim-snippets
packadd! vim-speeddating
packadd! vim-startuptime
packadd! vim-surround

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
set shortmess+=F                                        " Never show file info when opening a file.
set nojoinspaces                                        " Don't add double space after .?! when using :j.
set virtualedit=block                                   " Allow the cursor in position where there is no text in visual block mode.
set updatetime=150
set completeopt=menuone,noinsert,noselect               " Always show menu, do not auto insert and do not auto select.
set noruler                                             " Hide line and column number is status line

let g:markdown_folding = 1                              " Use markdown headings for fold levels.
let g:netrw_dirhistmax = 0                              " Don't create .netrwhist files

command! W w
command! Q q

augroup BRIANO
    autocmd!
    autocmd BufWritePre * call briano#Format()
augroup END
