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

" ``Syntax highlighting is juvenile'' -- Rob Pike
syntax off

augroup BRIANO
	autocmd!
	autocmd BufWritePre * call Format()
	autocmd BufRead,BufNewFile *.puml setlocal filetype=plantuml
	autocmd BufRead,BufNewFile *.tex setlocal filetype=tex
	autocmd BufRead,BufNewFile go.mod setlocal filetype=go
augroup END

" Format current buffer with appropriate formatters based on filetype.
function! Format()
	let l:view = winsaveview()
	%s/\s\+$//e   " EOL
	%s/\n\+\%$//e " EOF
	if &filetype == 'go'
		call system('goimports', getline(1, '$'))
		if v:shell_error == 0
			%!goimports
		endif
	elseif &filetype == 'markdown'
		%!pandoc -f markdown -t commonmark
			\+smart+task_lists+pipe_tables+tex_math_dollars
			\ --wrap preserve --markdown-headings setext
	endif
	call winrestview(l:view)
endfunction

" TodaysNote open todays note and fill the title if the file is new.
function! TodaysNote()
	let l:datestr = strftime('%Y-%m-%d')
	let l:title = strftime('%d %b %Y')
	let l:filename = '~/notes/' . l:datestr . '.md'
	execute 'edit' l:filename
	if !filereadable(expand('%'))
		execute 'normal! i' . l:title
		execute 'normal! o==========='
		execute 'normal! 0'
	endif
endfunction
