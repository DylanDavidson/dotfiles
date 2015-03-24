if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

alias ls='ls -G'
alias be='bundle exec'
eval "$(hub alias -s)"

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash;
  # PS1='[\W$(__git_ps1 " (%s)")]\$ ';
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
    PS1='[\W$(__git_ps1 " \e[1;32m\](%s)\e[0m\]")]\$ ';
fi

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin/psql/:$PATH
HISTFILESIZE=1000000000
HISTSIZE=1000000

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
git() { command hub "$@"; if [[ "$1" == *checkout* ]] || [[ "$1" == *co* ]]; then cd .; fi }

export LESS=eFRX

export NVM_DIR="/Users/dylandavidson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
