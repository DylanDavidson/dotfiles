" BASH command to use to run rspec
let g:rspec_command = '!clear; zeus rspec {spec}'

" Gets rid of NERD Tree when opening file with ctrlp
let g:ctrlp_reuse_window = 'NERD'
" Tells CtrlP to ignore files matching given pattern
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build)|(\.(swp|ico|git|svn))$'
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
