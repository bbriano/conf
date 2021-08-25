call plug#begin(stdpath('data') . '/plugged')
Plug 'cespare/vim-sbd'
Plug 'dstein64/vim-startuptime'
Plug 'duggiefresh/vim-easydir'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'justinmk/vim-ipmotion'
Plug 'neovim/nvim-lspconfig'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'wincent/ferret'
Plug 'wsdjeg/vim-fetch'
call plug#end()

augroup BRIANO
	autocmd!
	autocmd BufWritePre * call briano#Format()
	autocmd BufRead,BufNewFile *.puml setlocal filetype=plantuml
	autocmd BufRead,BufNewFile *.tex setlocal filetype=tex
	autocmd BufRead,BufNewFile go.mod setlocal filetype=go
augroup END
