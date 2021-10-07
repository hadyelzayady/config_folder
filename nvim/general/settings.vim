set iskeyword+=-                      	" treat dash separated words as a word text object"
set autoread
set title                               " change terminal window title based on opened file in vim
set undofile                 			" persistant undo after closing file
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers opened with changes
set wrap                                " wrap lines
set linebreak                           " don't break word on wrap, start new line with the word
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " a tab will show distance like 4 spaces
set shiftwidth=4                        " how much >> (keymap) will shift the line
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set smartcase
set ignorecase
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number relativenumber                             " Line numbers
set cursorline                          " Enable highlighting of the current line
autocmd WinEnter * setlocal cursorline  " set hilight of the current line if buffer is focused
autocmd WinLeave * setlocal nocursorline " remove hilight of the current line if buffer is not focued
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set updatetime=300                      " Faster completion
set timeoutlen=1000                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set incsearch
set isfname=@,48-57,/,.,-,_,+,#,$,%,~,= " define how gf will detect filename, this is the default value but execluded the comma from filename, check help gf for more
set guifont=Hack\ Nerd\ Font
set autochdir                           " Your working directory will always be the same as your working directory
set list

" Save file as sudo on files that require root permission
cmap w!! w !sudo tee > /dev/null %
