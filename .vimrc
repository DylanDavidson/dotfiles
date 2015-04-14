""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " " " Sets leader to be space bar

set nobackup
set nowritebackup " Prevent vim from creating space wasting backups (git has got it)
set noswapfile " More space wasting annoying files, don't need em
set history=50 " Shouldn't need more than the last 50 commands
set autowrite " Automatically writes files before commands
set backspace=indent,eol,start " Makes backspace act like regular editors

" Softtabs, 2 spaces (Ruby!)
set expandtab
set tabstop=2
set shiftround
set shiftwidth=2

" Relative Line Numbers, 5 columns wide
set relativenumber
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Highlight current line of cursor
set cursorline

set wildmenu " Allows tab completion for commands

set hidden " Hides annoying error messages

set autoread " Automatically monitors changes to files
set virtualedit=onemore " Adds extra space to end of line
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Fixes cursor with tmux
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Themes
""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme sexy-railscasts-256

" Adds a red bar at 101st column to indicate line is too long
if exists('+colorcolumn')
  set colorcolumn=101
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>101v.\+', -1)
endif

"""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Makes pane switching easier by making it Ctrl+(hjkl)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Makes searching nicer by using incsearch package
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Makes enter and Shift-Enter add newlines in Command Mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Makes a go to start of line, and s go to end of line
nnoremap a ^
nnoremap s $l

" Move to start/end of line and start editing with A and S
nnoremap A <S-i>
nnoremap S <S-a>

" Maps q to b for easier word navigation
nnoremap q b

nnoremap <SPACE> <Nop> " NOP for SPace so it can be the leader

nnoremap <SPACE>s :Ag<SPACE>

""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Packages
""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'haya14busa/incsearch.vim'
Plugin 'tpope/vim-rails'
Plugin 'ggreer/the_silver_searcher'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
""""""""""""""""""""""""""""""""""""""""""""""

augroup vimrcEx
  autocmd!
  " Saves on Lost Focus
  autocmd FocusGained * :CtrlPClearAllCaches
  autocmd BufLeave,FocusLost * silent! wall
  " Erases unnecessary whitespace
  autocmd BufWritePre * :%s/\s\+$//e
  autocmd BufWritePre * :%s/\n\{3,}/\r\r/e " Remove extra new lines on save
  au FocusGained * silent redraw! " Reload buffer when focus is gained
  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or
  " when inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
      \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
augroup END

" Silver Searcher
"
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

