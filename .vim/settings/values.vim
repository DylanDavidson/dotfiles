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
" <Tab> character becomes 4 spaces
set tabstop=4
" Autoindent to 4 spaces by default
set shiftwidth=4
" Makes backspace act like regular editors
set backspace=indent,eol,start
" Number of lines between cursor and bottom/top of screen when scrolling
set scrolloff=18
" Puts a red column at 81 characters to indicate when a line is too long
set colorcolumn=81,82,83
" Allows cursor to be placed one character beyond the end of the line
set virtualedit=onemore
" File types to ignore when autocompleting
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" Command to use for grep (uses Silver Searcher)
set grepprg=ag\ --nogroup\ --nocolor


