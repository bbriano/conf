call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'machakann/vim-highlightedyank'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'
call plug#end()

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
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\}
let g:highlightedyank_highlight_duration = 150
let g:vim_markdown_new_list_item_indent = 0

set noswapfile nobackup nowritebackup updatetime=0
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set incsearch ignorecase smartcase
set hidden laststatus=0 nowrap number
set clipboard+=unnamedplus

let mapleader=" "
nnoremap Y y$
nnoremap cw dwi
nnoremap cW dWi
nnoremap <Esc> :nohl<CR><C-l>
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>s :%s///g<Left><Left>
vnoremap <Leader>s :s///g<Left><Left>
nnoremap <C-p> :Files<CR>
nmap <silent> <C-{> <Plug>(ale_previous_wrap)
nmap <silent> <C-}> <Plug>(ale_next_wrap)
tnoremap <Esc> <C-\><C-n>
nnoremap <Leader>g :GitGutterToggle<CR>:ALEToggle<CR>
nnoremap - :Explore<CR>

" TODO Make this automatic on save (after prettier)
command! -nargs=0 W :%s/\(^\#\+.*\)\n\n/\1\r/g | :noa w | :nohl

autocmd Filetype markdown setlocal ts=2 sts=2 sw=2 commentstring=<!--\ %s\ -->
autocmd FileType asm setlocal commentstring=#\ %s

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
highlight Comment       ctermfg=8
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
highlight HighlightedyankRegion         ctermbg=Yellow
