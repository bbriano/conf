let dirvish_mode = ':sort'

command! -nargs=? -complete=file Explore Dirvish <args>
command! -nargs=? -complete=file Sexplore split | silent Dirvish <args>
command! -nargs=? -complete=file Vexplore vsplit | silent Dirvish <args>
