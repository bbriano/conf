setlocal expandtab shiftwidth=4
let markdown_folding = 1		" Use markdown headings for fold levels.

hi link MarkdownBlockquote Normal
augroup MARKDOWN
	autocmd!
	autocmd BufEnter *.md hi htmlItalic cterm=NONE		" Disable _italic_.
	autocmd BufEnter *.md hi htmlBold cterm=NONE		" Disable **bold**.
augroup END
