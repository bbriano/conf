setlocal commentstring=<!--\ %s\ -->
setlocal sw=2

" Disable **bold** and _italic_ to render with bold and italics fonts.
augroup MARKDOWN
    autocmd!
    autocmd BufEnter *.md hi htmlItalic cterm=NONE
    autocmd BufEnter *.md hi htmlBold cterm=NONE
augroup END
