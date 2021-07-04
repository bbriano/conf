augroup COMMENTARY
    autocmd!
    autocmd FileType c,cpp setlocal commentstring=//\ %s
    autocmd FileType markdown setlocal commentstring=<!--\ %s\ -->
    autocmd FileType matlab setlocal commentstring=%\ %s
    autocmd FileType plantuml setlocal commentstring='\ %s
augroup END
