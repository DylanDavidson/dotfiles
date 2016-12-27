" Number of colors available for vim to use in colorscheme
set t_Co=256
" Dark colorscheme by default
set background=dark
" Always have vim statusline on
set laststatus=2
" Format of statusline
" <file name> <file type> | LINE <current line>/<total lines>,COLUMN <current column>
set statusline=%f\ (%Y)\ %<%=\ LINE\ %l/%L,COLUMN\ %02c
" Maintains history of last 50 commands entered
set history=50
" <Tab> character becomes 2 spaces
set tabstop=2
" Autoindent to 2 spaces by default
set shiftwidth=2
" Makes backspace act like regular editors
set backspace=indent,eol,start
" Number of lines between cursor and bottom/top of screen when scrolling
set scrolloff=18
" Puts a red column at 81 characters to indicate when a line is too long
set colorcolumn=101,102,103
" Allows cursor to be placed one character beyond the end of the line
set virtualedit=onemore
" File types to ignore when autocompleting
set wildignore+=*.so,*.swp,*.zip,*.png,*.jpg,*.gif,*.class
" Command to use for grep (uses Silver Searcher)
set grepprg=ag\ --nogroup\ --nocolor
" Function for autocompletion
set omnifunc=syntaxcomplete#Complete
" Prevents message that requires hitting Enter to open file
set shortmess+=f
" Adds spell check for English
set spell spelllang=en_us

