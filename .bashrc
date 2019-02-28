source ~/.bash_profile

export NVM_DIR="/Users/dylandavidson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Set the Hi status to be displayed as part of the prompt. #!>>HI<<!#
# PS1="\[\${__hi_prompt_color}\]\${__hi_prompt_text}\[${__hi_NOCOLOR}\]${PS1}" #!>>HI<<!#
# Set the default values for the text of the hi prompt. Change these if you like. #!>>HI<<!#
# __hi_on_prompt="[hi on] " #!>>HI<<!#
# __hi_off_prompt="[hi off] " #!>>HI<<!#

