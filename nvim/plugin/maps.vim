let mapleader = ' '


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basics

" ESC to clear everything. Trigger CursorMoved to close LSP preview window.
nnoremap <silent> <esc>         :nohl<bar>doautocmd CursorMoved<cr><c-L>

" Stop accidentally switching to Ex-mode. Execute macro on register q.
nnoremap Q                      @q

" Default behaviour: yank line. Make it consistent with C and D.
nnoremap Y                      y$

" Paste over selected text while preserving the unnamed register.
vnoremap p                      "_dP

" Emacs-like binding in command mode.
cnoremap <c-a>                  <c-b>

" Who uses S and s? cc and cl does the same thing.
nnoremap <silent> S             :bprevious<cr>
nnoremap <silent> s             :bnext<cr>

" Case sensitive and * not jump to the next match.
nnoremap <silent> *             :let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>
nnoremap <silent> g*            :let @/='\C'.expand('<cword>')<cr>:set hls<cr>
nnoremap <silent> #             :let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>?<cr>
nnoremap <silent> g#            :let @/='\C'.expand('<cword>')<cr>:set hls<cr>?<cr>

" Use arrow keys to resize the current window.
nnoremap <silent> <down>        :resize +1<cr>
nnoremap <silent> <up>          :resize -1<cr>
nnoremap <silent> <right>       :vertical resize +1<cr>
nnoremap <silent> <left>        :vertical resize -1<cr>

" Useful to move around in visual block mode with virtualedit=block.
vnoremap <c-h>                  hoho
vnoremap <c-j>                  jojo
vnoremap <c-k>                  koko
vnoremap <c-l>                  lolo

" Stolen mappings from https://github.com/tpope/vim-unimpaired.
nnoremap [q                     :cprev<cr>
nnoremap ]q                     :cnext<cr>
nnoremap [l                     :lprev<cr>
nnoremap ]l                     :lnext<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Single Leaders

" Quick source!
nnoremap <leader>S              :source ~/.config/nvim/init.vim<cr>

" Tmux-like bindings.
nnoremap <silent> <leader>l     :buffer #<cr>
nnoremap <silent> <leader>x     :bdelete<cr>
" nnoremap <silent> <leader>d     :bnext<bar>bdelete #<cr>

" Substitute texts that matches the last search.
nnoremap <leader>s              :%s///g<left><left>
vnoremap <leader>s              :s///g<left><left>

" Like gqq and gq but separate on '.', '?' and '!'.
" TODO: Keep new lines commented if possible.
" TODO: Add verb version ala gq.
nnoremap <leader>qq             :s/\v(\.\|\?\|\!) +/\1\r/g<cr>
vnoremap <leader>q              :s/\v(\.\|\?\|\!) +/\1\r/g<cr>

" Run selected text through python and paste the output.
vnoremap <silent> <leader>p     yPgv:!python3<cr>

" Open today's note.
nnoremap <silent> <leader>tn    :call briano#TodaysNote()<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Double Leaders

" Force buffer delete (dangerous).
nnoremap <silent> <leader><leader>x :bdelete!<cr>

" Show syntax highlight group under cursor.
nnoremap <leader><leader>s      :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<cr>

" Diff current file with current buffer.
nnoremap <leader><leader>d      :w !diff % -<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

" Ack
nmap <leader>/                  <Plug>(FerretAck)
nmap <leader>?                  <Plug>(FerretAcks)
nmap <leader>*                  <Plug>(FerretAckWord)

" FZF
nnoremap <c-p>                  :Files<cr>
nnoremap <c-n>                  :History<cr>
nnoremap <c-s>                  :Buffers<cr>
nnoremap <leader>ff             :Files %:h<cr>
nnoremap <leader>h              :Help<cr>

" Nvim-Lspconfig
nnoremap <silent> [g            :lua vim.lsp.diagnostic.goto_prev()<cr>
nnoremap <silent> ]g            :lua vim.lsp.diagnostic.goto_next()<cr>
nnoremap <silent> gy            :lua vim.lsp.buf.type_definition()<cr>
nnoremap <silent> gd            :lua vim.lsp.buf.definition()<cr>
nnoremap <silent> gr            :lua vim.lsp.buf.references()<cr>
nnoremap <silent> K             :lua vim.lsp.buf.hover()<cr>
nnoremap <leader>rn             :lua vim.lsp.buf.rename()<cr>
nnoremap <leader>ca             :lua vim.lsp.buf.code_action()<cr>

" StartupTime
nnoremap <leader><leader>t      :StartupTime<cr>
