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

" Format current buffer with appropriate formatters based on filetype.
function! briano#Format()
    let l:view = winsaveview()
    if &filetype == 'go'
        call system('gofmt', getline(1, '$'))
        if v:shell_error == 0
            %!goimports
        endif
    elseif &filetype == 'markdown'
        %!prettier --stdin-filepath foo.md --loglevel error
    else
        %s/\s\+$//e         " EOL
        %s/\n\+\%$//e       " EOF
    endif
    call winrestview(l:view)
endfunction
