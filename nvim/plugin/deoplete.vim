call deoplete#custom#option('sources', {
\   '_': ['ale', 'file', 'buffer']
\})

inoremap <silent> <CR> <C-r>=deoplete#close_popup()<CR><CR>

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
