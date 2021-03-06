" Remove inapplicable defaults from 'indentkeys'; we should only need to undo
" this if the stock plugin didn't already arrange that (before v7.3.539)
setlocal indentkeys-=0#,0{,0},0),:
if !exists('b:undo_indent')
  let b:undo_indent = 'setlocal indentkeys<'
endif

" Use VimL conventions for two-space indents
setlocal shiftwidth=2
let b:undo_indent .= '|setlocal shiftwidth<'
if &softtabstop != -1
  let &l:softtabstop = &l:shiftwidth
  let b:undo_indent .= '|setlocal softtabstop<'
endif
