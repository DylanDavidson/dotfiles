" BASH command to use to run rspec
let g:rspec_command = '!clear; zeus rspec {spec}'

" Gets rid of NERD Tree when opening file with ctrlp
let g:ctrlp_reuse_window = 'NERD'
" Tells CtrlP to ignore files matching given pattern
let g:ctrlp_custom_ignore = {
\ 'dir': '\v[\/]\.(swp|ico|git|svn|hg)$',
\ 'file': '\v\.(exe|so|dll|node_modules|png)',
\ }
" Use Silver Searcher for CtrlP since it's faster (I think)
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" Disable caching for CtrlP (not sure why)
let g:ctrlp_use_caching = 0

" Ctrl + m to find next match for multiple cursors
let g:multi_cursor_next_key = '<C-m>'

" Configuration to get ack to work with Silver Searcher
let g:ackprg = 'ag --smart-case'

""""
"" Vivi
""""

let g:vivi_enable_omni_completion = 1
let g:neocomplete#enable_at_startup = 1

""""
"" YouCompleteMe
""""

let g:ycm_min_num_of_chars_for_completion = 0

""""
"" Neomake
""""

let g:neomake_list_height = 1
let g:neomake_open_list = 2
let neomake_error_format = '%E%f: line %l\, col %c\, Error - %m,%W%f: line %l\, col %c\, Warning - %m'
let g:neomake_javascript_eslint_maker = {
      \ 'errorformat': neomake_error_format,
      \ 'exe': 'eslint',
      \ 'args': ['-f', 'compact', '--rule', '{"no-console":[1]}'],
      \ }
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

""""
"" Vim JSX (React)
""""

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

