setlocal textwidth=72

augroup TEX
	autocmd!
	autocmd BufWritePre *.tex :Dispatch! !pdflatex %
augroup END
