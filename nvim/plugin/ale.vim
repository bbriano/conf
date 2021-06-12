let g:ale_hover_cursor = 0                  " Disable showing message of symbol under cursor.
let g:ale_floating_preview = 1              " Use floating window preview over default.
let g:ale_close_preview_on_insert = 1       " Entering insert mode closes preview window.
let g:ale_floating_window_border = [' ', ' ', ' ', ' ', ' ', ' ']

let g:ale_linters = {
\   'markdown': ['write-good', 'proselint'],
\   'python': ['jedils', 'mypy'],
\   'text': ['write-good', 'proselint'],
\   'tex': ['write-good', 'proselint'],
\   'rust': ['analyzer'],
\   'go': ['gopls'],
\}
