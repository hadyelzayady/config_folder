au! BufWritePost $MYVIMRC ++nested source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

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

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif





" ************  LANGUAGE SPECIFIC ************
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
