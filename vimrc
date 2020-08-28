""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       BASICS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" No swap files!
set noswapfile
set nobackup
set nowritebackup
set updatetime=0

" Indentation
set expandtab
set shiftwidth=4
set softtabstop=-1
autocmd Filetype markdown setlocal shiftwidth=2
autocmd Filetype html setlocal shiftwidth=2
autocmd Filetype css setlocal shiftwidth=2
autocmd Filetype scss setlocal shiftwidth=2
autocmd Filetype json setlocal shiftwidth=2
autocmd Filetype javascript setlocal shiftwidth=2
autocmd Filetype javascriptreact setlocal shiftwidth=2
autocmd Filetype typescript setlocal shiftwidth=2
autocmd Filetype typescriptreact setlocal shiftwidth=2

" Search
set incsearch
set ignorecase
set smartcase

" Hide status bar when only 1 window is opened
set laststatus=1

" Disable text wrapping
set nowrap

" Show number columns
set number

" Allow hidden buffers
set hidden

" Disable cursor styling
set guicursor=

" Don't indent when inserting new line in markdown lists
let g:vim_markdown_new_list_item_indent = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Space map leader
let mapleader=" "

" Make Y more consistent with C and D
nmap Y y$

" Clear highlights
nmap <Esc> :nohl<CR><C-l>

" Jump to last opened buffer
nmap <Leader><Leader> <C-^>

" Substitute highlighted words
nmap <Leader>s :%s///g<Left><Left>
vmap <Leader>s :s///g<Left><Left>

" Fuzzy find files in current working directory
nmap <C-p> :Files<CR>

" Jump to errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" <Esc> to exit insert mode in terminal mode
tmap <Esc> <C-\><C-n>

" Toggle gutter
nmap <Leader>g :GitGutterToggle<CR>:ALEToggle<CR>

" Cycle through buffers
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'michaeljsmith/vim-indent-object'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'
call plug#end()

" ALE
let g:ale_linters = {
\   'python': ['mypy'],
\   'markdown': [],
\   'asm': [],
\}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'python': ['black'],
\   'markdown': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'json': ['prettier'],
\   'javascript': ['prettier'],
\   'javascriptreact': ['prettier'],
\   'typescript': ['prettier'],
\   'typescriptreact': ['prettier'],
\}
let g:highlightedyank_highlight_duration = 150

" vim-commentary
autocmd Filetype cpp setlocal commentstring=//\ %s
autocmd Filetype markdown setlocal commentstring=<!--\ %s\ -->
autocmd FileType asm setlocal commentstring=#\ %s

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       HIGHLIGHTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

highlight SpecialKey    ctermfg=4
highlight TermCursor    cterm=reverse
highlight NonText       ctermfg=12
highlight Directory     ctermfg=4
highlight ErrorMsg      ctermfg=15      ctermbg=1
highlight IncSearch     cterm=reverse
highlight MoreMsg       ctermfg=2
highlight ModeMsg       cterm=bold
highlight CursorLineNr  ctermfg=3
highlight Question      ctermfg=2
highlight Title         ctermfg=5
highlight WarningMsg    ctermfg=1
highlight WildMenu      ctermfg=0       ctermbg=11
highlight Conceal       ctermfg=7       ctermbg=7
highlight SpellBad      ctermbg=2
highlight SpellRare     ctermbg=5
highlight SpellLocal    ctermbg=14
highlight PmenuSbar     ctermbg=8
highlight PmenuThumb    ctermbg=0
highlight TabLine       cterm=underline ctermfg=0       ctermbg=7
highlight TabLineSel    cterm=bold
highlight TabLineFill   cterm=reverse
highlight CursorColumn  ctermbg=7
highlight CursorLine    cterm=underline
highlight MatchParen    ctermbg=14
highlight Constant      ctermfg=1
highlight Special       ctermfg=5
highlight Identifier    cterm=NONE      ctermfg=6
highlight Statement     ctermfg=3
highlight PreProc       ctermfg=5
highlight Type          ctermfg=2
highlight Underlined    cterm=underline ctermfg=5
highlight Ignore        ctermfg=15
highlight Error         ctermfg=15      ctermbg=9
highlight Todo          ctermfg=0       ctermbg=11
highlight DiffAdd       ctermfg=0       ctermbg=2
highlight DiffChange    ctermfg=0       ctermbg=3
highlight DiffDelete    ctermfg=0       ctermbg=1
highlight DiffText      ctermfg=0       ctermbg=11      cterm=bold
highlight Visual        ctermfg=NONE    ctermbg=NONE    cterm=inverse
highlight Search        ctermfg=0       ctermbg=11
highlight LineNr        ctermfg=8
highlight Comment       ctermfg=4
highlight ColorColumn   ctermfg=7       ctermbg=8
highlight Folded        ctermfg=7       ctermbg=8
highlight FoldColumn    ctermfg=7       ctermbg=8
highlight Pmenu         ctermfg=15      ctermbg=8
highlight PmenuSel      ctermfg=8       ctermbg=15
highlight SpellCap      ctermfg=7       ctermbg=8
highlight StatusLine    ctermfg=15      ctermbg=8       cterm=bold
highlight StatusLineNC  ctermfg=7       ctermbg=8       cterm=NONE
highlight VertSplit     ctermfg=7       ctermbg=8       cterm=NONE
highlight SignColumn    ctermfg=7       ctermbg=NONE
highlight HighlightedyankRegion ctermfg=0 ctermbg=11
