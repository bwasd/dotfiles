" make recipe lines must begin with a tab
setlocal noexpandtab
let b:undo_indent = 'setlocal expandtab<'
if v:version > 703
      \ || v:version == 703 && has('patch629')
  setlocal shiftwidth=0
else
  let &l:shiftwidth = &l:tabstop
endif
let b:undo_indent .= '|setlocal shiftwidth<'
if &softtabstop != -1
  let &l:softtabstop = &l:shiftwidth
  let b:undo_indent .= '|setlocal softtabstop<'
endif
