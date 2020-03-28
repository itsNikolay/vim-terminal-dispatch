" if exists('g:loaded_vim_terminal_dispatch_plugin') || &cp || version < 700
"   finish
" endif
" let g:loaded_vim_terminal_dispatch_plugin = 1


command! -bang -nargs=* FocusTerminalDispatch call FocusTerminalDispatch2()
command! -bang -nargs=* -range TranslateRangeFun call TranslateRangeFun2()

noremap <nowait> <silent> <buffer> <leader>! :FocusTerminalDispatch<CR>
vnoremap <nowait> <silent> <buffer> g :<c-u>TranslateRangeFun<CR>
