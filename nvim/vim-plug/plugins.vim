" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  " Files (rename file, ....)
  Plug 'tpope/vim-eunuch'
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  Plug 'preservim/nerdcommenter'
  " Have the file system follow you around (change the cwd to the the directory of of the current opened file)
  Plug 'airblade/vim-rooter'
  " auto set indent settings (replaced by vim-polyglot)
  " Plug 'tpope/vim-sleuth'

  " list of all available completions for its single argument
  Plug 'rantasub/vim-bash-completion'
  " " Text Navigation
  " Plug 'justinmk/vim-sneak'
  Plug 'unblevable/quick-scope'
  Plug 'easymotion/vim-easymotion'
  " show color or color value in css for example
  Plug 'norcalli/nvim-colorizer.lua'
  " Plug 'junegunn/rainbow_parentheses.vim'
  " colored parant.., braces,tags,... alternative to junegunn/rainbow_parentheses
  Plug 'luochen1990/rainbow'
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " Cool Icons
  " Plug 'ryanoasis/vim-devicons'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " Closetags
  Plug 'alvan/vim-closetag'
  " Themes
  " Plug 'christianchiarulli/nvcode.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'tomasiser/vim-code-dark'
  Plug 'bluz71/vim-moonfly-colors'
  " Plug 'kaicataldo/material.vim'
  " Plug 'NLKNguyen/papercolor-theme'
  " Plug 'tomasiser/vim-code-dark'
  " Intellisense, completion
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " lint and fix, error checking
  Plug 'dense-analysis/ale'
  " Status Line
  Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'
  " Ranger
  " Plug 'francoiscabrol/ranger.vim'
  " Plug 'rbgrouleff/bclose.vim'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'lambdalisue/gina.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  " Plug 'tpope/vim-rhubarb'
  " Plug 'junegunn/gv.vim'
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
  " another linter like ale
  " Plug 'neomake/neomake'
  " Snippets TODO fix TAB hijack
  " Plug 'SirVer/ultisnips'
  " Better Comments
  " Plug 'jbgutierrez/vim-better-comments'
  " Echo doc (like function signature in vim echo area)
  Plug 'Shougo/echodoc.vim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  "fern explorer with nerd icons plugins
  Plug 'lambdalisue/fern.vim'
  Plug 'yuki-yano/fern-preview.vim'
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'christoomey/vim-tmux-navigator'
  " show git status in fern
  Plug 'lambdalisue/fern-git-status.vim'
  " set fern as default explorer instead of netrw
  Plug 'lambdalisue/fern-hijack.vim'

  "syntax hilight for jrnl file
  " Plug 'mode89/vim-jrnl-syntax'

  " Jump to any visible line in the buffer by using letters instead of numbers.
  " replaced with easymotion-plugin goto lineletters
  " Plug 'skamsie/vim-lineletters'
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  " plugins for languages
  " Plug 'rust-lang/rust.vim'
  Plug 'jlcrochet/vim-razor'
  " interact with tmux from vim
  Plug 'preservim/vimux'

  " to show indentation with vertical bar (useful when using spaces with
  " expand tab so after each tab(exapned to spaces) )
  Plug 'Yggdroot/indentLine'

  " auto make file executable based on filetype like python and bash
  Plug 'vitalk/vim-shebang'

  " debugging plugin
  Plug 'puremourning/vimspector'

  " View markdown on browser with sync with nvim
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  " markdown
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'


  " c#
  Plug 'OmniSharp/omnisharp-vim'
  " Plug 'embear/vim-uncrustify'

  " cpp
  Plug 'octol/vim-cpp-enhanced-highlight'
  call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
