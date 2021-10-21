" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  " Files (rename file, ....)
  Plug 'tpope/vim-eunuch'
  " Repeat stuff even plugins actions like surround word with parenthesis
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  Plug 'preservim/nerdcommenter'
  " Have the file system follow you around (change the cwd to the the directory of of the current opened file)
  Plug 'airblade/vim-rooter'
  " " Text Navigation
  Plug 'justinmk/vim-sneak'
  Plug 'unblevable/quick-scope'
  " show indentation
  Plug 'Yggdroot/indentLine'

  " show color or color value in css for example
  Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
  " colored parant.., braces,tags,... alternative to junegunn/rainbow_parentheses
  Plug 'luochen1990/rainbow'
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " Closetags
  Plug 'alvan/vim-closetag'
  " Themes
  Plug 'bluz71/vim-moonfly-colors'
  " lint and fix, error checking
  Plug 'dense-analysis/ale'
  " Status Line
  Plug 'vim-airline/vim-airline'
  " show buffer and tabs better than tabline in airline
  Plug 'akinsho/bufferline.nvim'
  Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  """""""""""""""""""" Git """"""""""""""""""""
  " view changed lines in sign colum
  Plug 'airblade/vim-gitgutter'
  " git functions from vim async, commit,push,pull,...
  Plug 'lambdalisue/gina.vim'

  " right now both of following packages are used to browse commits, but gina
  " is used for all other git operations
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'

  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " Vista
  Plug 'liuchengxu/vista.vim'
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  " Zen mode
  Plug 'junegunn/goyo.vim'

  " Displays function signatures from completions in the command line
  Plug 'Shougo/echodoc.vim'

  "fern explorer with nerd icons plugins
  Plug 'lambdalisue/fern.vim'
  Plug 'yuki-yano/fern-preview.vim'
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  " show git status in fern
  Plug 'lambdalisue/fern-git-status.vim'
  " set fern as default explorer instead of netrw
  Plug 'lambdalisue/fern-hijack.vim'

  " switch between two vim in multiple tmux panes
  Plug 'christoomey/vim-tmux-navigator'

  " auto make file executable based on filetype like python and bash
  Plug 'vitalk/vim-shebang'

  " debugging plugin
  Plug 'puremourning/vimspector'

  " nvim LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  """""""""""""""""""""""""""""" for autocompletion
  Plug 'nvim-lua/completion-nvim'

  """""""""""""""""""""""""""""" Language Specific Plugins """"""""""""""""""""""""""""""
  Plug 'rust-lang/rust.vim'

  " View markdown on browser with sync with nvim
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  " c#
  Plug 'jlcrochet/vim-razor'

  " cpp
  Plug 'octol/vim-cpp-enhanced-highlight'

  """""""""""""""""""""""""""""" Themes """"""""""""""""""""""""""""""
  Plug 'crusoexia/vim-monokai'

call plug#end()
