if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
if [ -f ~/.profile ]; then
  source ~/.profile
fi
if [ -f ~/.sshaliases ]; then
  source ~/.sshaliases
fi

export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cacert.pem

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-completion.bash
    PS1='[\W$(__git_ps1 " (%s)")]\$ ';
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# Shows apple and computer info when opening new Terminal window
archey --color

# Enables hub alias for git
eval "$(hub alias -s)"

alias ls='ls -G'
alias be='bundle exec'
alias cal="cal | grep -C6 --color '\b$(date +%e)\b'"

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin/psql/:$PATH
HISTFILESIZE=1000000000
HISTSIZE=1000000

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export LESS=eFRX

export NVM_DIR="/Users/dylandavidson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[0;32m"
COLOR_OCHRE="\033[38;5;95m"
COLOR_BLUE="\033[0;34m"
COLOR_WHITE="\033[0;37m"
COLOR_RESET="\033[0m"

function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ ! $git_status =~ "working directory clean" ]]; then
    echo -e $COLOR_RED
  elif [[ $git_status =~ "Your branch is ahead of" ]]; then
    echo -e $COLOR_YELLOW
  elif [[ $git_status =~ "nothing to commit" ]]; then
    echo -e $COLOR_GREEN
  else
    echo -e $COLOR_OCHRE
  fi
}

function git_branch {
  local git_status="$(git status 2> /dev/null)"
  local on_branch="On branch ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $git_status =~ $on_branch ]]; then
    local branch=${BASH_REMATCH[1]}
    echo "($branch)"
  elif [[ $git_status =~ $on_commit ]]; then
    local commit=${BASH_REMATCH[1]}
    echo "($commit)"
  fi
}

PS1="\[$COLOR_WHITE\][\W"          # basename of pwd
if [[ -n git_branch ]]; then
  PS1+="\[\$(git_color)\]"        # colors git status
  PS1+="\$(git_branch)\[$COLOR_RESET\]"
fi     # prints current branch
PS1+="\[$COLOR_WHITE\]]\[$COLOR_BLUE\] \$\[$COLOR_RESET\] "   # '#' for root, else '$'
export PS1

# Unix
alias la="ls -a"
alias bp="source ~/.bash_profile"
alias bpe="vim ~/.bash_profile"
alias ve="vim ~/.vimrc"
alias v="vim ."

# Git
alias g="git"
alias gc="git commit"
alias gca="git commit --amend --no-edit"
alias s="git s"
alias d="git d"
alias ds="git ds"
alias co="git checkout"
alias com="git checkout master"
alias cod="git checkout develop"
alias gad="git add ."

alias rhh="git reset --hard HEAD"
alias rhh1="git reset --hard HEAD~1"

# Bundler
alias b="bundle"

# Rails
alias am="rake apartment:migrate"
alias ar="rake apartment:rollback"
alias m="rake db:migrate"
alias r="rspec spec/"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

# Jekyll/Blogging
alias jek="jekyll serve --watch"
alias drafts="jekyll serve --watch --drafts"

# ROI Revolution stuff
alias rubodiff="~/RailsApps/rubodiff"
alias dashdiff="~/RailsApps/dashdiff"
alias cdedge="cd ~/RailsApps/edge/"
alias cddash="cd ~/RailsApps/dash/"
alias chrome="open -a Google\ Chrome"

# Kills all Rails development related processes
killrails() {
  pkill zeus
  pkill ruby
  pkill resque
  pkill faye
}

# Java :(
javar() {
  javac "$1.java"
  java $1
}

base() {
  cp ~/apps/interview/Base.java "$1.java"
  sed -i "s/Base/$1/" "$1.java"
}
