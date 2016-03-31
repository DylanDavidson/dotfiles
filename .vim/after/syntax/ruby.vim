let s:bcs = b:current_syntax
unlet b:current_syntax
syntax include @SQL syntax/pgsql.vim
let b:current_syntax = s:bcs
syntax region rubyHereDocSQL matchgroup=Statement start=+<<-\?SQL+ end=+^\s*SQL$+ contains=@SQL
