if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-completion.bash
    PS1='[\W$(__git_ps1 " (%s)")]\$ ';
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# Always list hidden files, and use color
alias ls="ls -G -a"
alias usr_local="sudo chown -R $USER:admin /usr/local"
