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
