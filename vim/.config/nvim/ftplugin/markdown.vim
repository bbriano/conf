setlocal noexpandtab
setlocal wrap

nnoremap <buffer> k gk
nnoremap <buffer> j gj

augroup MARKDOWN
    autocmd!
    autocmd BufEnter *.md hi htmlItalic cterm=NONE          " Disable _italic_.
    autocmd BufEnter *.md hi htmlBold cterm=NONE            " Disable **bold**.
augroup END
