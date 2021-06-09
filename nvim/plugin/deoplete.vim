call deoplete#custom#option('sources', {
\   '_': ['ale', 'file', 'buffer']
\})

" Enter inserts newline instead of closing the popup window.
inoremap <silent> <CR> <C-r>=deoplete#close_popup()<CR><CR>

" Lazily start deoplete when user is idle to improve startup time.
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
