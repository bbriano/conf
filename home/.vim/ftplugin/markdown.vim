" Set fold on headings.
let markdown_folding = 1

" Keep it looking plain.
augroup MARKDOWN
	autocmd BufEnter *.md hi htmlBold cterm=NONE
	autocmd BufEnter *.md hi htmlItalic cterm=NONE
	autocmd BufEnter *.md hi MarkdownBlockquote ctermfg=NONE
augroup END
