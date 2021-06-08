let mapleader = ' '

nnoremap <silent> <esc>     :nohl<CR><C-L>
nnoremap Q                  @q
nnoremap Y                  y$
vnoremap p                  "_dP
nnoremap S                  :bprevious<CR>
nnoremap s                  :bnext<CR>
cnoremap <C-a>              <C-b>

nnoremap *                  :let @/='\C\<'.expand('<cword>').'\>'<CR>:set hls<CR>
nnoremap g*                 :let @/='\C'.expand('<cword>')<CR>:set hls<CR>
nnoremap #                  :let @/='\C\<'.expand('<cword>').'\>'<CR>:set hls<CR>?<CR>
nnoremap g#                 :let @/='\C'.expand('<cword>')<CR>:set hls<CR>?<CR>

nnoremap <silent> <down>    :resize +1<CR>
nnoremap <silent> <up>      :resize -1<CR>
nnoremap <silent> <right>   :vertical resize +1<CR>
nnoremap <silent> <left>    :vertical resize -1<CR>

vnoremap <C-h>              hoho
vnoremap <C-j>              jojo
vnoremap <C-k>              koko
vnoremap <C-l>              lolo

nnoremap <leader>S          :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>l          :buffer #<CR>
nnoremap <leader>x          :bdelete<CR>
nnoremap <leader>d          :bnext \| bdelete #<CR>
nnoremap <leader>s          :%s///g<left><left>
vnoremap <leader>s          :s///g<left><left>
nnoremap <leader>qq         :s/\. /\.\r/g<CR>
vnoremap <leader>p          yPgv:!python3<CR>
nnoremap <leader>td         :execute 'e' strftime("~/notes/%Y-%m-%d.md")<CR>
nnoremap <leader>m          :make!<CR>
nnoremap <leader>M          :Make!<CR>

nnoremap <leader><leader>s  :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<CR>

nnoremap [g                 :ALEPreviousWrap<CR>
nnoremap ]g                 :ALENextWrap<CR>
nnoremap gy                 :ALEGoToTypeDefinition<CR>
nnoremap gd                 :ALEGoToDefinition<CR>
nnoremap gr                 :ALEFindReference<CR>
nnoremap K                  :ALEHover<CR>
nnoremap <leader>rn         :ALERename<CR>
nnoremap <leader>ca         :ALECodeAction<CR>
nnoremap <leader>rs         :ALEReset<CR>

" FZF closes slowly without this
tnoremap <esc>              <esc><esc>
nnoremap <C-p>              :Files<CR>
nnoremap <C-n>              :History<CR>
nnoremap <C-s>              :Buffers<CR>
nnoremap <leader>ff         :Files %:h<CR>
nnoremap <leader>/          :Rg<CR>
nnoremap <leader>h          :Help<CR>
