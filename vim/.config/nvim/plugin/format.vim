" Format current buffer with appropriate formatters based on filetype.
function! Format()
    let l:view = winsaveview()
    %s/\s\+$//e         " EOL
    %s/\n\+\%$//e       " EOF
    if &filetype == 'go'
        call system('gofmt', getline(1, '$'))
        if v:shell_error == 0
            %!goimports
        endif
    elseif &filetype == 'haskell'
        %!ormolu
    elseif &filetype == 'markdown'
        %!pandoc -f markdown -t commonmark+smart+task_lists+pipe_tables+tex_math_dollars
            \ --wrap preserve --markdown-headings setext
    endif
    call winrestview(l:view)
endfunction

augroup FORMAT
    autocmd!
    autocmd BufWritePre * call Format()
augroup END
