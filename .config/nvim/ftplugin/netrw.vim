" Don't create .netrwhist files.
let netrw_dirhistmax = 0

" Hide the big annoying banner.
let netrw_banner = 0

" Go where there?
let netrw_list_hide = '^\.\.\?/$'

" Default is to change sorting behaviour or something.
nnoremap <buffer> <silent> S	:bprevious<cr>
nnoremap <buffer> <silent> s	:bnext<cr>
