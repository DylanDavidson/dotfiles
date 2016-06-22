" BASH command to use to run rspec
let g:rspec_command = '!clear; zeus rspec {spec}'
" Tells CtrlP to reuse window rather than splitting to open file if it's a NERD tree window
let g:ctrlp_reuse_window = 'NERD'
" Tells CtrlP to ignore files matching given pattern
" Gets rid of NERD Tree when opening file with ctrlp
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build)|(\.(swp|ico|git|svn))$'
" Use Silver Searcher for CtrlP since it's faster (I think)
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" Disable caching for CtrlP (not sure why)
let g:ctrlp_use_caching = 0
