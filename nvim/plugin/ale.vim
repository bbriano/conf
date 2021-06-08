let g:ale_linters = {
\   'markdown': ['write-good', 'proselint'],
\   'python': ['jedils', 'mypy'],
\   'text': ['write-good', 'proselint'],
\   'tex': ['write-good', 'proselint'],
\   'rust': ['analyzer'],
\   'go': ['gopls'],
\}

" let g:ale_fix_on_save = 1

" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'markdown': ['prettier'],
" \   'go': ['goimports'],
" \}

" augroup ALE
"     autocmd!
"     autocmd BufWritePre * ALEFix
" augroup END
