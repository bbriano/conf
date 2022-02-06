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

" Case sensitive and * not jump to the next match.
nnoremap <silent> *  :let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>
nnoremap <silent> g* :let @/='\C'.expand('<cword>')<cr>:set hls<cr>
nnoremap <silent> #  :let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>?<cr>
nnoremap <silent> g# :let @/='\C'.expand('<cword>')<cr>:set hls<cr>?<cr>

" Good with virtualedit=block.
vnoremap <c-h> hoho
vnoremap <c-j> jojo
vnoremap <c-k> koko
vnoremap <c-l> lolo

" Substitute last search.
nnoremap <space>s :%s///g<left><left>
vnoremap <space>s :s///g<left><left>

" Like gqq and gq but separate on '.', '?' and '!'.
nnoremap <space>qq :s/\v(\.\|\?\|\!) +/\1\r/g<cr>
vnoremap <space>q  J:s/\v(\.\|\?\|\!) +/\1\r/g<cr>

" Open netrw and put cursor on current file.
nnoremap - :let @/='\C\<'.expand('%:t').'\>'<cr>:E<cr>n:nohl<cr>

" Fix mispelling with first suggestion.
nnoremap z- z=1<cr><cr>

" Re-Run last command in last tmux pane.
nnoremap <silent> <cr> :Dispatch! tmux select-pane -t '{last}' && tmux send-keys ^l ^p Enter && tmux select-pane -t '{last}'<cr>

" Open today's note.
nnoremap <space>tn :call TodaysNote()<cr>

" StartupTime
nnoremap <space>w :StartupTime<cr>

" Ack
nmap <space>/ <Plug>(FerretAck)
nmap <space>? <Plug>(FerretAcks)
nmap <space>* <Plug>(FerretAckWord)

" FZF
tnoremap <esc>    <esc><esc>
nnoremap <c-p>    :Files<cr>
nnoremap <c-n>    :History<cr>
nnoremap <c-q>    :Files %:h<cr>
nnoremap <space>h :Help<cr>

" Prime real-estate. lower ones are more valuable.
nnoremap <c-t>       :echo 'c-t is available'<cr>
nnoremap <c-c>       :echo 'c-c is available'<cr>
nnoremap <c-h>       :echo 'c-h is available'<cr>
nnoremap <c-j>       :echo 'c-j is available'<cr>
nnoremap <c-k>       :echo 'c-k is available'<cr>
nnoremap <c-l>       :echo 'c-l is available'<cr>
nnoremap <backspace> :echo 'backspace available'<cr>
