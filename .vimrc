" Sets leader to be comma
let mapleader = ","

syntax on

" Load boolean VIM settings
source ~/.vim/settings/boolean.vim
" Load VIM settings that are set to a value
source ~/.vim/settings/values.vim
" Load VIM mappings and key bindings
source ~/.vim/settings/mappings.vim
" Load VIM global variables
source ~/.vim/settings/globals.vim
" Load VIM plugins (via Vundle)
source ~/.vim/settings/plugins.vim
" Load VIM Autocommands
source ~/.vim/settings/autocommands.vim

colorscheme solarized
