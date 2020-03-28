" if exists('g:loaded_vim_terminal_dispatch_plugin') || &cp || version < 700
"   finish
" endif
" let g:loaded_vim_terminal_dispatch_plugin = 1

noremap <nowait> <leader>! :call FocusTerminalDispatch()<CR>
vnoremap <nowait> g :<c-u>call TranslateRangeFun()<CR>
