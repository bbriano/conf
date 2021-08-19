setlocal expandtab shiftwidth=4 textwidth=65

let markdown_folding = 1

augroup MARKDOWN
	autocmd BufEnter *.md hi htmlBold cterm=NONE
	autocmd BufEnter *.md hi htmlItalic cterm=NONE
	autocmd BufEnter *.md hi MarkdownBlockquote ctermfg=NONE
augroup END
