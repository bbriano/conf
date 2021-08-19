augroup TEX
	autocmd!
	autocmd BufWritePre *.tex :Dispatch! !pdflatex %
augroup END
