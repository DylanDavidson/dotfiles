# If not running interactively, don't do anything
[[ $- == *i* ]] || return

if [ -f ~/dotfiles/bash/path.sh ]; then
  source ~/dotfiles/bash/path.sh
fi

if [ -f ~/dotfiles/bash/aliases.sh ]; then
  source ~/dotfiles/bash/aliases.sh
fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.profile ]; then
  source ~/.profile
fi

# Aliases to make SSHing easier (THIS FILE SHOULD NOT BE UNDER SOURCE CONTROL)
if [ -f ~/.sshaliases ]; then
  source ~/.sshaliases
fi

# Aliases to make various processes at my job easier. (THIS FILE SHOULD NOT BE UNDER SOURCE CONTROL)
if [ -f ~/.work ]; then
  source ~/.work
fi

# Determine OS and load OS specific configs
operating_system="$(uname)"
if [[ $operating_system =~ "Linux" ]]; then
  source ~/.linux
elif [[ $operating_system =~ "Darwin" ]]; then # OS X returns "Darwin" from uname
  source ~/.osx
fi

export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cacert.pem

# Shows OS and other computer info when opening new Terminal window
archey

# History Settings
export HISTFILESIZE=1000000000
export HISTSIZE=1000000

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
