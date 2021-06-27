setlocal noexpandtab

augroup GO
    autocmd!
    autocmd BufWritePre *.go call briano#FormatGo()     " Format on write.
augroup END
