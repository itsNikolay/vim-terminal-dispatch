if exists('g:loaded_vim_terminal_dispatch_autoload') || &cp || version < 700
  finish
endif
let g:loaded_vim_terminal_dispatch_autoload = 1

fun! vim#terminal#dispatch#translateRangeFun2() range
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  let selectedText = join(lines, "\n")

  call chansend(s:chan, selectedText."\n")
endf

fun! vim#terminal#dispatch#focusTerminalDispatch2()
  let s:chan = &channel
  echo "VimTerminalDispatch focused on channel: ".s:chan
endf
