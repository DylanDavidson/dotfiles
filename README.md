# dotfiles
Home of my unix setup for ~dylandavidson

### Installation
Do this all from your home directory (`~`)

1. Install Brew

        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

1. Install `tmux`

        brew install tmux

1. Clone the dotfiles

        git clone git@github.com:DylanDavidson/dotfiles.git

1. Symlink the dotfiles to your root directory

        ln -s -f dotfiles/.* .

1. Remove the ".git" directory that is stupidly copied over

        rm -rf .git

1. Install Vundle

        git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

1. Install all of the Vundle vim plugins

        vim +PluginInstall +qall

Woo! You're up and running with my configs.
