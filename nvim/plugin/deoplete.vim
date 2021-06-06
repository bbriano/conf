call deoplete#custom#option('sources', {
\   '_': ['ale', 'file', 'buffer']
\})

augroup DEOPLETE
    autocmd!
    autocmd CursorHold,CursorHoldI * call DeopleteStart()
augroup END

function! DeopleteStart()
    augroup DEOPLETE
        autocmd!
    augroup END
    call deoplete#enable()
endfunction
