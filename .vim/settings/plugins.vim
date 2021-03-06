" Required for Vundle to work
filetype off
" Includes Vundle in runtime path
set rtp+=~/.vim/bundle/Vundle.vim
" Starts Vundle
call vundle#begin()

" Allows Vundle to manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'DylanDavidson/neomake' " Syntax Linter
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim' " Easy file searching in project
Plugin 'scrooloose/nerdtree' " Better tree navigator for file structure
Plugin 'ggreer/the_silver_searcher' " Better grep
Plugin 'mileszs/ack.vim' " Used to make silver searcher work
Plugin 'pbrisbin/vim-mkdir' " Auto creates directories when making files
Plugin 'kristijanhusak/vim-multiple-cursors' " Sublime style multiple cursors
if empty(glob("~/work.vim"))
  Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'gregsexton/MatchTag' " Highlights closing HTML tag
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-commentary'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jgdavey/tslime.vim'
Plugin 'rhysd/committia.vim' " Shows diff and status when committing
Plugin 'janko-m/vim-test'
" Language specific
Plugin 'kchmck/vim-coffee-script' " Syntax/Indenting for CoffeeScript
Plugin 'othree/html5.vim' " Syntax/Indenting for HTML5
Plugin 'elzr/vim-json' " Syntax/Indenting for JSON
" Elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'liquidz/vivi.vim'
" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'keith/rspec.vim'
" JavaScript/React
Plugin 'isRuslan/vim-es6' " ES6 Syntax
Plugin 'mxw/vim-jsx' " Syntax/Indenting for React JSX Files
" TypeScript
Plugin 'leafgarland/typescript-vim'

" Ends Vundle processing
call vundle#end()
" Re-enbales file type identification, required for Vundle
filetype plugin indent on
