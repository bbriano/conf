" Format current buffer with appropriate formatters based on filetype.
function! briano#Format()
	let l:view = winsaveview()
	%s/\s\+$//e		" EOL
	%s/\n\+\%$//e		" EOF
	if &filetype == 'go'
		call system('gofmt', getline(1, '$'))
		if v:shell_error == 0
			%!goimports
		endif
	elseif &filetype == 'haskell'
		%!ormolu
	elseif &filetype == 'markdown'
		%!pandoc -f markdown --columns 65 --markdown-headings setext
			\ -t commonmark+smart+task_lists+pipe_tables+tex_math_dollars
	endif
	call winrestview(l:view)
endfunction

" TodaysNote open todays note and fill the title if the file is new.
function! briano#TodaysNote()
	let l:datestr = strftime('%Y-%m-%d')
	let l:title = strftime('%d %b %Y')
	let l:filename = '~/notes/' . l:datestr . '.md'
	execute 'edit' l:filename
	if !filereadable(expand('%'))
		execute 'normal! i' . l:title
		execute 'normal! o==========='
		execute 'normal! 0'
	endif
endfunction

" Show syntax highlight group under cursor.
function! briano#HighlightGroupCursor()
	return map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction
