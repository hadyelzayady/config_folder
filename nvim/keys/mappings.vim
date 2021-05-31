" g Leader key
let mapleader=" "
nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" I hate escape more than anything else
inoremap jk <ESC>
inoremap kj <ESC>

" toggle comment using ctrl+/
map <C-_> <plug>NERDCommenterToggle

" create file under the cursor
map <silent> cf :e <cfile><cr>
" Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>

" TAB in normal mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
" Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" Better window navigation
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
" use window navigation also in terminal
" tnoremap <C-h> <C-\><C-N><C-w>h
" tnoremap <C-j> <C-\><C-N><C-w>j
" tnoremap <C-k> <C-\><C-N><C-w>k
" tnoremap <C-l> <C-\><C-N><C-w>l
" inoremap <C-h> <C-\><C-N><C-w>h
" inoremap <C-j> <C-\><C-N><C-w>j
" inoremap <C-k> <C-\><C-N><C-w>k
" inoremap <C-l> <C-\><C-N><C-w>l
"
" Use alt + ctrl + hjkl to resize windows
nnoremap <silent> <M-C-j>    :resize -2<CR>
nnoremap <silent> <M-C-k>    :resize +2<CR>
nnoremap <silent> <M-C-h>    :vertical resize -2<CR>
nnoremap <silent> <M-C-l>    :vertical resize +2<CR>

"enable dot command (repeat last action) to be executed in visual mode
vnoremap . :norm.<CR>
