set textwidth=65

augroup TEX
	autocmd!
	autocmd BufWritePre *.tex :Dispatch! !pdflatex %
augroup END
