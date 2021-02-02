" prefix with s: for local script-only functions
function! Run(command)
  exec '50vs term://' . a:command
endfunction

nnoremap <F11> :call Run('make clean install')
" rust
autocmd filetype rust nnoremap <F9> :call Run('cargo build')<CR>
autocmd filetype rust nnoremap <F10> :call Run('cargo run')<CR>

" cpp
autocmd filetype cpp nnoremap <F10> :call Run('g++ % && ./a.out')<CR>

" bash
autocmd filetype sh nnoremap <F10> :call Run('./%')<CR>
