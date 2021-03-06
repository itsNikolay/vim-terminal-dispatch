if exists('g:loaded_vim_terminal_dispatch_plugin') || &cp || version < 700
  finish
endif
let g:loaded_vim_terminal_dispatch_plugin = 1


command! -bang -nargs=* FocusTerminalDispatch call vim_terminal_dispatch#focusTerminalDispatch()
command! -bang -nargs=* -range TranslateRangeFun call vim_terminal_dispatch#translateRangeFun()

noremap <nowait> <silent> <leader>! :FocusTerminalDispatch<CR>
vnoremap <nowait> <leader>g :<c-u>TranslateRangeFun<CR>
