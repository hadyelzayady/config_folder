" let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_base_dir=expand( '$HOME/.config/nvim/vimspector-config/' )

nmap <F5>    <Plug>VimspectorStop
nmap <F6>    :VimspectorReset<CR>

nmap <F8>    <Plug>VimspectorToggleBreakpoint
nmap <leader><F8>    <Plug>VimspectorToggleConditionalBreakpoint
nmap <F7>    <Plug>VimspectorAddFunctionBreakpoint

nmap <F9>    <Plug>VimspectorContinue
nmap <leader><F9>    <Plug>VimspectorRunToCursor
nmap <F10>     <Plug>VimspectorStepOver
nmap <F11>    <Plug>VimspectorStepInto
nmap <F12>    <Plug>VimspectorStepOut

" for normal mode - the word under the cursor
" nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
" xmap <Leader>di <Plug>VimspectorBalloonEval

nmap <leader>c :e $HOME/.config/nvim/vimspector-config/configurations/linux/<CR>
