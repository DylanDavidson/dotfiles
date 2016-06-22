""""""""""""""""""""""""""""""""""""""""""""""""
" All Modes
""""""""""""""""""""""""""""""""""""""""""""""""

" Maps q to b for easier word navigation
noremap q b

"""" Folding Mappings
" zo opens all folds
noremap zo zR
" zc closes all folds
noremap zc zM

" Leader then n toggles the nerdtree directory view
noremap <leader>n :NERDTreeToggle<CR>
" Leader then r toggles the renames file
noremap <leader>r :Gmove<space>
" leader then s saves file
noremap <leader>s :w<CR>
" leader then q quits file
noremap <leader>q :q<CR>
" leader then g switches between specs and class
noremap <leader>g :A<CR>
" leader leader switches between current file and previous file
noremap <leader><leader> <C-^>

" vim-rspec Mappings
noremap <leader>t :call RunCurrentSpecFile()<CR>
noremap <leader>c :call RunNearestSpec()<CR>
noremap <leader>a :call RunAllSpecs()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""
" Normal Mode
""""""""""""""""""""""""""""""""""""""""""""""""

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Makes pane switching easier by making it Ctrl+(hjkl)
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Makes enter and Shift-Enter add newlines in Command Mode
nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>

" Makes a go to start of line, and s go to end of line
nnoremap a ^
nnoremap s $l

" Navigation helpers
nnoremap H ^
nnoremap L $
nnoremap K }

" Moves to ctag for word under cursor
nnoremap f :execute 'tjump' expand('<cword>')<CR>

" Use backslash to globally search using Silver Searcher
nnoremap \ :Ag<Space>

""""""""""""""""""""""""""""""""""""""""""""""""
" Insert Mode
""""""""""""""""""""""""""""""""""""""""""""""""

" Auto-Save when exiting insert mode
inoremap <C-[> <ESC>:w<CR>

" Make little movements in insert mode possible
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" Mapping for autoclosing brackets
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Mapping for autoclosing parenthesis
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

" Mapping for autoquotes
inoremap '      ''<Left>
inoremap "      ""<Left>

""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Mode
""""""""""""""""""""""""""""""""""""""""""""""""

" Mapping for copy to clipboard
vnoremap <C-c> :w !pbcopy<cr>

" Finds reference using ctags
vnoremap f <C-]>
