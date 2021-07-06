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
