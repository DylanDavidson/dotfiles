" Required for Vundle to work
filetype off
" Includes Vundle in runtime path
set rtp+=~/.vim/bundle/Vundle.vim
" Starts Vundle
call vundle#begin()

" Allows Vundle to manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ggreer/the_silver_searcher'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'powerline/powerline'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'othree/html5.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-commentary'
Plugin 'thoughtbot/vim-rspec'
Plugin 'keith/rspec.vim'
Plugin 'jgdavey/tslime.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elzr/vim-json'
Plugin 'rhysd/committia.vim'

" Ends Vundle processing
call vundle#end()
" Re-enbales file type identification, required for Vundle
filetype plugin indent on    
