" ESC to clear everything.
nnoremap <silent> <esc> :nohl<cr>:echo<cr>

" Basics.
nnoremap Q    @q
nnoremap Y    y$
vnoremap p    "_dP
command! W    w
command! Q    q
command! Diff w !diff % -

" Emacs-like binding in command mode.
cnoremap <c-a> <c-b>
cnoremap <c-b> <left>
cnoremap <c-f> <right>
cnoremap <c-d> <delete>

" Buffer controls.
nnoremap <silent> S              :bprevious<cr>
nnoremap <silent> s              :bnext<cr>
nnoremap <silent> <space><space> :buffer #<cr>
nnoremap <silent> <c-s>          :Sbd<cr>
nnoremap <silent> <space><c-s>   :Sbdm<cr>

" Windows resizing
nnoremap <left>  <c-w><
nnoremap <down>  <c-w>+
nnoremap <up>    <c-w>-
nnoremap <right> <c-w>>

" Good with virtualedit=block.
vnoremap <c-h> hoho
vnoremap <c-j> jojo
vnoremap <c-k> koko
vnoremap <c-l> lolo

" Case sensitive and * not jump to the next match.
nnoremap <silent> *  :let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>
nnoremap <silent> g* :let @/='\C'.expand('<cword>')<cr>:set hls<cr>
nnoremap <silent> #  :let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>?<cr>
nnoremap <silent> g# :let @/='\C'.expand('<cword>')<cr>:set hls<cr>?<cr>

" Look up vim manual for word under cursor.
nnoremap K :execute 'h '.expand('<cword>')<cr>

" Substitute highlighted.
nnoremap <space>s :%s///g<left><left>
vnoremap <space>s :s///g<left><left>

" Open netrw and put cursor on current file.
nnoremap <silent> - :let @/='\C^'.expand('%:t')<cr>:E<cr>n:nohl<cr>

" Re-Run last command in last tmux pane.
nnoremap <silent> <cr> :call system('tmux send-keys -t {last} ^c ^l ^p Enter &')<cr>

" StartupTime
nnoremap <space>w :StartupTime<cr>

" Ack
nmap <space>/ <Plug>(FerretAck)
nmap <space>? <Plug>(FerretAcks)
nmap <space>* <Plug>(FerretAckWord)
