let g:bufferline_show_bufnr = 0

" Keep text around when scrolling
nnoremap gg			gg:echo bufferline#get_echo_string()<cr>
nnoremap G			G:echo bufferline#get_echo_string()<cr>
nnoremap <c-e>			<c-e>:echo bufferline#get_echo_string()<cr>
nnoremap <c-y>			<c-y>:echo bufferline#get_echo_string()<cr>
nnoremap <c-d>			<c-d>:echo bufferline#get_echo_string()<cr>
nnoremap <c-u>			<c-u>:echo bufferline#get_echo_string()<cr>
nnoremap <c-f>			<c-f>:echo bufferline#get_echo_string()<cr>
nnoremap <c-b>			<c-b>:echo bufferline#get_echo_string()<cr>
