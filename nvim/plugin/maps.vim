let mapleader = ' '

nnoremap <silent> <esc>     :nohl<cr><c-L>
nnoremap Q                  @q
nnoremap Y                  y$
vnoremap p                  "_dP
nnoremap <silent> S         :bprevious<cr>
nnoremap <silent> s         :bnext<cr>
cnoremap <c-a>              <c-b>

nnoremap <silent> *         :let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>
nnoremap <silent> g*        :let @/='\C'.expand('<cword>')<cr>:set hls<cr>
nnoremap <silent> #         :let @/='\C\<'.expand('<cword>').'\>'<cr>:set hls<cr>?<cr>
nnoremap <silent> g#        :let @/='\C'.expand('<cword>')<cr>:set hls<cr>?<cr>

nnoremap <silent> <down>    :resize +1<cr>
nnoremap <silent> <up>      :resize -1<cr>
nnoremap <silent> <right>   :vertical resize +1<cr>
nnoremap <silent> <left>    :vertical resize -1<cr>

vnoremap <c-h>              hoho
vnoremap <c-j>              jojo
vnoremap <c-k>              koko
vnoremap <c-l>              lolo

nnoremap [q                 :cprev<cr>
nnoremap ]q                 :cnext<cr>

nnoremap <leader>S          :source ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader>l :buffer #<cr>
nnoremap <silent> <leader>x :bdelete<cr>
nnoremap <silent> <leader>d :bnext<bar>bdelete #<cr>
nnoremap <leader>s          :%s///g<left><left>
vnoremap <leader>s          :s///g<left><left>
nnoremap <leader>qq         :s/\. /\.\r/g<cr>
vnoremap <silent> <leader>p          yPgv:!python3<cr>
nnoremap <silent> <leader>td         :execute 'e' strftime("~/notes/%Y-%m-%d.md")<cr>
nnoremap <leader>m          :make!<cr>
nnoremap <leader>M          :Make!<cr>

nnoremap <leader><leader>s  :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<cr>

nnoremap <silent> [g        :ALEPreviousWrap<cr>
nnoremap <silent> ]g        :ALENextWrap<cr>
nnoremap <silent> gy        :ALEGoToTypeDefinition<cr>
nnoremap <silent> gd        :ALEGoToDefinition<cr>
nnoremap <silent> gr        :ALEFindReference<cr>
nnoremap <silent> K         :ALEHover<cr>
nnoremap <leader>rn         :ALERename<cr>
nnoremap <leader>ca         :ALECodeAction<cr>
nnoremap <leader>rs         :ALEReset<cr>

" FZF closes slowly without this
tnoremap <esc>              <esc><esc>
nnoremap <c-p>              :Files<cr>
nnoremap <c-n>              :History<cr>
nnoremap <c-s>              :Buffers<cr>
nnoremap <leader>ff         :Files %:h<cr>
nnoremap <leader>/          :Rg<cr>
nnoremap <leader>h          :Help<cr>
