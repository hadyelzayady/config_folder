" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
" " let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#right_sep = '◀'
" " let g:airline#extensions#tabline#right_alt_sep = '|'
" let airline#extensions#tabline#show_splits = 1

" Disable tabline close button
let g:airline#extensions#tabline#show_close_button = 0
" let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1 " show tab number
" let g:airline#extensions#tabline#fnamecollapse = 1

let g:airline#extensions#tabline#buffers_label = 'b'
let g:airline#extensions#tabline#tabs_label = 't'
" let g:airline#extensions#kite#statusline = 1
" Just show the file name
let g:airline#extensions#tabline#fnamemod = ':p'

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline#extensions#tabline#formatter = 'unique_tail'


" Switch to your current theme
" let g:airline_theme = 'onedark'

" Always show tabs
" set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" Sections
" let g:airline_section_c = ''
let g:airline_section_a = "Geeker"
let g:airline_section_y = ''
" let g:airline_section_z = '%{kite#statusline()}'
let g:webdevitons_enable_airline_tabline = 1
