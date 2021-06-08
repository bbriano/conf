let g:neoformat_only_msg_on_error = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" Enable trimmming of trailing newline
let g:neoformat_basic_format_trim_newline = 1

augroup NEOFORMAT
    autocmd!
    autocmd BufWritePre * Neoformat
augroup END
