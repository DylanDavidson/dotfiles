augroup AutoCommands
  autocmd!
  " Updates Markdown files to use syntax highlighting
  autocmd BufNewFile,BufReadPost *.md set filetype=markdown

  " Erases unnecessary whitespace
  autocmd BufWritePre * :%s/\s\+$//e

  " Runs neomake after every file save
  autocmd BufWritePost * Neomake

  " Reload buffer when focus is gained
  au FocusGained * silent redraw!
augroup END
