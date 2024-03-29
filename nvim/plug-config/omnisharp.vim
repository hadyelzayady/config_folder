" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview', 'popup'
" and 'popuphidden' if you don't want to see any documentation whatsoever.
" Note that neovim does not support `popuphidden` or `popup` yet:
" https://github.com/neovim/neovim/issues/10996
" if has('patch-8.1.1880')
"   set completeopt=longest,menuone,popuphidden
"   " Highlight the completion documentation popup background/foreground the same as
"   " the completion menu itself, for better readability with highlighted
"   " documentation.
"   set completepopup=highlight:Pmenu,border:off
" else
"   set completeopt=longest,menuone,preview
"   " Set desired preview window height for viewing documentation.
"   set previewheight=5
" endif
" let g:OmniSharp_server_stdio = 1
" " Tell ALE to use OmniSharp for linting C# files, and no other linters.
"
" augroup omnisharp_commands
"   autocmd!
"
"   " Show type information automatically when the cursor stops moving.
"   " Note that the type is echoed to the Vim command line, and will overwrite
"   " any other messages in this space including e.g. ALE linting messages.
"   autocmd CursorHold *.cs OmniSharpTypeLookup
"
"   " The following commands are contextual, based on the cursor position.
"   autocmd FileType cs,cshtml nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
"   autocmd FileType cs,cshtml imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
"
"   " Navigate up and down by method/property/field
"   autocmd FileType cs,cshtml nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
"   " Find all code errors/warnings for the current solution and populate the quickfix window
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
"   " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
"   autocmd FileType cs,cshtml xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
"   " Repeat the last code action performed (does not use a selector)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
"   autocmd FileType cs,cshtml xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
"
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)
"
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)
"
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
"   autocmd FileType cs,cshtml nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
" augroup END

" Enable snippet completion, using the ultisnips plugin
" let g:OmniSharp_want_snippet=1


" OmniSharp: {{{
let g:OmniSharp_popup_position = 'peek'
if has('nvim')
  let g:OmniSharp_popup_options = {
  \ 'winhl': 'Normal:NormalFloat'
  \}
else
  let g:OmniSharp_popup_options = {
  \ 'highlight': 'Normal',
  \ 'padding': [0, 0, 0, 0],
  \ 'border': [1]
  \}
endif
let g:OmniSharp_popup_mappings = {
\ 'sigNext': '<C-n>',
\ 'sigPrev': '<C-p>',
\ 'pageDown': ['<C-f>', '<PageDown>'],
\ 'pageUp': ['<C-b>', '<PageUp>']
\}

let g:OmniSharp_highlight_groups = {
\ 'ExcludedCode': 'NonText'
\}
" }}}
