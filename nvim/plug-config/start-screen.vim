
let g:startify_custom_header = [
                              \'  ________               __                 ',
                              \' /  _____/  ____   ____ |  | __ ___________ ',
                              \'/   \  ____/ __ \_/ __ \|  |/ // __ \_  __ \',
                              \'\    \_\  \  ___/\  ___/|    <\  ___/|  | \/',
                              \' \______  /\___  >\___  >__|_ \\___  >__|   ',
                              \'        \/     \/     \/     \/    \/       ',
        \]

let g:startify_session_dir = '~/.config/nvim/sessions'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

" let g:webdevicons_enable_startify = 1

" function! StartifyEntryFormat()
"         return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
"     endfunction

let g:startify_bookmarks = [
            \ { 's': '~/.config/nvim/plug-config/start-screen.vim' },
            \ { 'x': '~/.config/sxhkd/sxhkdrc' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'r': '~/.bashrc' },
            \ { 'z': '~/.config/zsh/.zshrc' },
            \ { 'd': '~/repos/dwm' },
            \ ]

let g:startify_enable_special = 0
