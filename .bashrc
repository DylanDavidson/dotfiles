# If not running interactively, don't do anything
[[ $- == *i* ]] || return

export PATH=$PATH:$HOME/.rvm/bin

alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'
git() { command git "$@"; if [[ "$1" == *checkout* ]] || [[ "$1" == *co* ]]; then [[ -s .rvmrc ]] && . .rvmrc; fi }
cd .



### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
