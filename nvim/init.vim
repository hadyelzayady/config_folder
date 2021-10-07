source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim

source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/general/auto-commands.vim
" paths to search in when use goto file or execute binary, it is default is
" shell value if the variable exist
source $HOME/.config/nvim/general/paths.vim

"""""""""""""""""""""""""""""""""""""""" UI """"""""""""""""""""""""""""""""""""""""
" syntax highlighting
source $HOME/.config/nvim/themes/syntax.vim

" vim theme, background font style, font color,etc
source $HOME/.config/nvim/themes/theme.vim

" statusline
source $HOME/.config/nvim/themes/airline.vim

" buffer tabs
luafile $HOME/.config/nvim/plug-config/bufferline.lua

"""""""""""""""""""""""""""""""""""""""" plugins configurations """"""""""""""""""""""""""""""""""""""""
source $HOME/.config/nvim/plug-config/fzf.vim

" better comment by deciding which comment style is used based on filetype and
" more options
source $HOME/.config/nvim/plug-config/nerd-commenter.vim

" File explorer
source $HOME/.config/nvim/plug-config/fern.vim

" Show matching parenthesis in same color  and others with differnt color
source $HOME/.config/nvim/plug-config/rainbow.vim

" text navigation by two chars vertical and horizontal
source $HOME/.config/nvim/plug-config/sneak.vim
" for line navigation (horizontal)
source $HOME/.config/nvim/plug-config/quickscope.vim

source $HOME/.config/nvim/plug-config/lsp-config.vim
luafile $HOME/.config/nvim/plug-config/nvim-lspinstall.lua

" Code lenting (code analysis -> show errors, warning, info, etc in code)
source $HOME/.config/nvim/plug-config/ale.vim

" Auto change current working directory based on current opened file
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/start-screen.vim

" shows a git diff in the sign column (most left column, beside line number
" col)
source $HOME/.config/nvim/plug-config/gitgutter.vim

" Auto close tags in html files
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/floaterm.vim

" View and search LSP symbols, tags in NeoVim.
source $HOME/.config/nvim/plug-config/vista.vim

" View color of inserted value in rgp or hex in css files for example
source $HOME/.config/nvim/plug-config/vim-hexokinase.vim

" debugger UI
source $HOME/.config/nvim/plug-config/vimspector.vim
