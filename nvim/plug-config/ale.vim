
let g:ale_linters_explicit = 1
let g:ale_linters = {
            \'python': ['autopep8'],
            \'cpp': ['clang'],
            \}

" Set this variable to 1 to fix files when you save them.
"let g:ale_fix_on_save = 1

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'python':['autopep8','yapf'],
\   'html':['prettier'],
\}

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
