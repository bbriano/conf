" TodaysNote open todays note and fill the title if the file is new.
function! briano#TodaysNote()
    let l:datestr = strftime('%Y-%m-%d')
    let l:filename = '~/notes/' . l:datestr . '.md'
    execute 'edit' l:filename
    if !filereadable(expand('%'))
        execute 'normal! i# ' . l:datestr
        execute 'normal! 0'
    endif
endfunction

" TrimWhiteSpace deletes whitespace characters at end of line and end of file.
function! briano#TrimWhiteSpace()
    let l:view = winsaveview()
    %s/\s\+$//e         " EOL
    %s/\n\+\%$//e       " EOF
    call winrestview(l:view)
endfunction

" FormatMarkdown overwrites the current markdown buffer with formatted version.
function! briano#FormatMarkdown()
    let l:view = winsaveview()
    %!prettier --stdin-filepath foo.md --loglevel error
    call winrestview(l:view)
endfunction

" FormatGo overwrites the current go buffer with formatted version.
function! briano#FormatGo()
    let l:view = winsaveview()
    %!gofmt
    call winrestview(l:view)
endfunction
