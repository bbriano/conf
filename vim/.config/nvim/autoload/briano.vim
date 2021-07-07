" TodaysNote open todays note and fill the title if the file is new.
function! briano#TodaysNote()
    let l:datestr = strftime('%Y-%m-%d')
    let l:title = strftime('%d %b %Y')
    let l:filename = '~/notes/' . l:datestr . '.md'
    execute 'edit' l:filename
    if !filereadable(expand('%'))
        execute 'normal! i' . l:title
        execute 'normal! o==========='
        execute 'normal! 0'
    endif
endfunction
