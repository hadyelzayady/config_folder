let g:fern#renderer = "nerdfont"


" fern-git-status plugin config
" Disable listing ignored files/directories
let g:fern_git_status#disable_ignored = 1

" Disable listing untracked files
let g:fern_git_status#disable_untracked = 1

" Disable listing status of submodules
let g:fern_git_status#disable_submodules = 1

" Disable listing status of directories
let g:fern_git_status#disable_directories = 1

function! s:init_fern() abort
  " Use 'select' instead of 'edit' for default 'open' action
  nmap <buffer> H <Plug>(fern-action-open:split)
  nmap <buffer> V <Plug>(fern-action-open:vsplit)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
