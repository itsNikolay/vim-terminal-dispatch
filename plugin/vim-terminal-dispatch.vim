if exists('g:loaded_vim_terminal_dispatch_plugin') || &cp || version < 700
  finish
endif
let g:loaded_vim_terminal_dispatch_plugin = 1


command! -bang -nargs=* FocusTerminalDispatch call vimterminaldispatch#focusTerminalDispatch2()
command! -bang -nargs=* -range TranslateRangeFun call vimterminaldispatch#focusTerminalDispatch2TranslateRangeFun2()

noremap <nowait> <silent> <leader>! :FocusTerminalDispatch<CR>
vnoremap <nowait> g :<c-u>TranslateRangeFun<CR>
