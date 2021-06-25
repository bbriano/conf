setlocal commentstring=<!--\ %s\ -->
setlocal sw=2

augroup MARKDOWN
    autocmd!
    autocmd BufEnter *.md hi htmlItalic cterm=NONE          " Disable _italic_.
    autocmd BufEnter *.md hi htmlBold cterm=NONE            " Disable **bold**.
    autocmd BufWritePre *.md call briano#FormatMarkdown()   " Format on write.
augroup END
