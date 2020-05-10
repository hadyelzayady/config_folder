"********************* Config **********************
set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8

"auto save when call make
set autowrite

"mode is shown in new status line, no need to show mode in default
set noshowmode

"set tab size to 4 spaces
set tabstop=4

"set indent size to 4 spaces (for auto indent)
set shiftwidth=4

"when tab is pressed insert spaces
set expandtab

"to auto indent when open new line based on indentation of the previous line
set smarttab

" set hybrid relative number
set number relativenumber

" use x11 primary clipboard
set clipboard=unnamedplus

"show tabs and spaces
set list

"enable rainbow plugin
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

"hilight current cursor line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234
" end hilight cursor line

" +++++++++++++++ale linter config +++++++++++++++++++++++=
" run only specified linters
let g:ale_linters_explicit = 1
" Equivalent to the above.
let g:ale_linters = {
            \'python': ['autopep8'],
            \}

" Set this variable to 1 to fix files when you save them.
"let g:ale_fix_on_save = 1

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'python':['autopep8'],
\   'html':['prettier'],
\}

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'


" +++++++++++ lightline config++++++++++++++
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" lightline (statusbar) configs
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
" *********************************** Plugins ******************************************
call plug#begin('~/.config/nvim/plugged')
" auto close pairs (, {,",',...
Plug 'jiangmiao/auto-pairs'

" comment code with shortcut for multiple programming languages
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
" Lint, Fix, Autocomplete,.. code
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Vim surrouding to surround text with tags barces,... easily
Plug 'tpope/vim-surround'

"repeat non native vim commands using dot command
Plug 'tpope/vim-repeat'

" start up screen
Plug 'mhinz/vim-startify'

" colored parant.., braces,tags,..
Plug 'luochen1990/rainbow'

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
"Go lang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
" *********************************** Keys mapping **********************************
" map leader
let mapleader = " "

" map escape
inoremap <C-i> <ESC>

"paste in insert mode
" ctrl+leader (or space)
" remove highlight when press leader twice
nnoremap <silent> <leader><leader> :nohlsearch<CR>

" map space to nothing in normal mode because it is now the leader
nnoremap <Space> <NOP>

"enable dot command (repead last action) to be executed in visual mode
vnoremap . :norm.<CR>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Paste in insert mode
"<C-r> 0
" ++++++++++++FZF keymaps +++++++++++
nnoremap <silent> <leader>f :FZF<CR>
"Find in home
nnoremap <silent> <leader>F :FZF /<CR>

" Find file in buffers
nnoremap <silent> <leader>b :Buffers<CR>

" Find text in current buffer
nnoremap <silent> <leader>l :BLines<CR>
" Find text in loaded buffer
nnoremap <silent> <leader>L :Lines<CR>

" ++++++++++++NERDCommented mappings++++++++++++
" toggle comment using ctrl+/
map <C-_> <plug>NERDCommenterToggle

" ******************************* Auto commands ******************

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Update binds when sxhkdrc is updated.
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
"when tab is pressed insert spaces
autocmd FileType * set formatoptions-=cro
