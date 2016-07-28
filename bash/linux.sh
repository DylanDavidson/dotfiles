alias nocaps="setxkbmap -option ctrl:nocaps"
alias pbcopy="xclip -i -selection clipboard"
alias pbpaste="xclip -o"

# Puts linuxbrew bin in PATH
export PATH="~/.linuxbrew/bin:$PATH"

# Use rxvt-unicode by default for linux
export TERMINAL="rxvt-unicode"

# Maps caps lock to control
nocaps
