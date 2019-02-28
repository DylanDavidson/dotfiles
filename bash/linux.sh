alias nocaps="setxkbmap -option ctrl:nocaps"
alias remapcaps="setxkbmap -option"
alias pbcopy="xclip -i -selection clipboard"
alias pbpaste="xclip -o"

export PATH=$HOME/.linuxbrew/bin:$PATH

# Use rxvt-unicode by default for linux
export TERMINAL="rxvt-unicode"

function lockscreen() {
  ~/.config/i3/i3lock.sh
}

# Maps caps lock to control
nocaps

export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH
