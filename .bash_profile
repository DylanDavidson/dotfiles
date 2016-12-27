if [ -f ~/dotfiles/bash/functions.sh ]; then
  source ~/dotfiles/bash/functions.sh
fi

if [ -f ~/dotfiles/bash/aliases.sh ]; then
  source ~/dotfiles/bash/aliases.sh
fi

# Determine OS and load OS specific configs
operating_system="$(uname)"
if [[ $operating_system =~ "Linux" ]]; then
  source ~/dotfiles/bash/linux.sh
elif [[ $operating_system =~ "Darwin" ]]; then # OS X returns "Darwin" from uname
  source ~/dotfiles/bash/osx.sh
fi

# If not running interactively, don't do anything
[[ $- == *i* ]] || return

# Load all external configuration files
if [ -f ~/dotfiles/bash/path.sh ]; then
  source ~/dotfiles/bash/path.sh
fi

if [ -f ~/dotfiles/bash/ps1.sh ]; then
  source ~/dotfiles/bash/ps1.sh
fi

# Aliases to make SSHing easier (THIS FILE SHOULD NOT BE UNDER SOURCE CONTROL)
if [ -f ~/.sshaliases ]; then
  source ~/.sshaliases
fi

# Aliases to make various processes at my job easier. (THIS FILE SHOULD NOT BE UNDER SOURCE CONTROL)
if [ -f ~/work.sh ]; then
  source ~/work.sh
fi

# Shows OS and other computer info when opening new Terminal window
if has_command archey; then
  archey
fi

# History Settings
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
