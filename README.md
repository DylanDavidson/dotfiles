# dotfiles
Home of my unix setup for ~dylandavidson

### Installation
Do this all from your home directory (`~`)

1. [Download iTerm2](https://iterm2.com/)

   - Once installed, open settings and go to Profiles > Keys > Hotkey Window and enable, set to Command+Shift+`
   - Go to Window setting, set Style to `Full-Width Top of Screen`
   - Go to General, change `Command` from `Login Shell` to `Command` and put `bash -l` in the box (this will load our ~/.bashrc)

1. Install Brew

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

        Make sure to follow steps to add brew to PATH

1. Install `tmux`

        brew install tmux

1. If a new computer, [create a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent), and [add to Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) at https://github.com/settings/keys

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

1. Install tmux plugin manager (TPM)

         git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Woo! You're up and running with my configs.
