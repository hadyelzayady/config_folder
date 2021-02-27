set iskeyword+=-                      	" treat dash separated words as a word text object"
set autoread
set undofile                 			" persistant undo after closing file
set formatoptions-=cro                  " Stop newline continution of comments
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set wrap                                " wrap lines
set linebreak                           " don't break word on wrap, start new line with the word
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
" set cmdheight=2                         " More space for displaying messages
" set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " a tab will show distance like 4 spaces
set shiftwidth=4                        " how much >> (keymap) will shift the line
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
" set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number relativenumber                             " Line numbers
set cursorline                          " Enable highlighting of the current line
autocmd WinEnter * setlocal cursorline  " set hilight of the current line if buffer is focused
autocmd WinLeave * setlocal nocursorline " remove hilight of the current line if buffer is not focued
set background=dark                     " tell vim what the background color looks like
" set showtabline=2                       " Always show tabs(tabs in files)
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=1000                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set incsearch
set isfname=@,48-57,/,.,-,_,+,#,$,%,~,= " define how gf will detect filename, this is the default value but execluded the comma from filename, check help gf for more
set guifont=Hack\ Nerd\ Font
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set autochdir                           " Your working directory will always be the same as your working directory

set foldcolumn=2                        " Folding abilities

" show tab as > and space as -
set list
" set listchars=nbsp:_,tab:>-,trail:~

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

"remove comment in new line
autocmd FileType * set formatoptions-=cro

" Update binds when sxhkdrc is updated.
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Have dwmblocks automatically recompile and run when you edit this file in
" vim with the following line in your vimrc/init.vim:
autocmd BufWritePost ~/repos/dwmblocks/config.h !cd ~/repos/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
autocmd BufWritePost ~/repos/dwm/config.h !cd ~/repos/dwm/; sudo make clean install && { kill -HUP $(pgrep -u $USER "\bdwm$") }

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" auto mkdir if the file path does not exist
augroup Mkdir
  autocmd!
  autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")
augroup END

" Save file as sudo on files that require root permission
cmap w!! w !sudo tee > /dev/null %


" use ale with coc
let g:ale_disable_lsp = 1
