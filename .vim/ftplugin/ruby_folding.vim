" Defines custom text for when code is folded
set foldtext=CustomFoldText()
fu! CustomFoldText()
  " Sets the first non blank line in the fold to 'fs' variable
  let fs = v:foldstart
  while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
  endwhile

  if fs > v:foldend
    let line = getline(v:foldstart)
  else
    let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
  endif

  let window_width = winwidth(0)
  let blank_rest_of_line = repeat(" ", window_width)

  return line . blank_rest_of_line
endf

" Folded line styling
hi Folded ctermbg=237
