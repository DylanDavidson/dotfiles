##
#### UNIX
##

# Always list hidden files, and use color
alias ls="ls -G -a --color"
# Reloads BASH profile
alias bp="source ~/.bash_profile"
# Open BASH profile in VIM for editing
alias bpe="vim ~/.bash_profile"
# Opens BASH aliases for editing
alias aliases="vim ~/dotfiles/bash/aliases.sh"
# Opens BASH PS1 for editing
alias ps1="vim ~/dotfiles/bash/ps1.sh"
# Opens VIMRC in VIM for editing
alias ve="vim ~/.vimrc"
# Open current directory in VIM for editing
alias v="vim ."
# Displays pretty calendar with current date highlighted
alias cal="cal | grep -C6 --color '\b$(date +%e)\b'"
# Opens given HTML file in Chrome from command line
alias chrome="open Google\ Chrome"
# Flushes DNS
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'
# Makes autojumping easier
alias j="autojump"
# tmux -2 ensures that 256 colors will be used
alias tmux="tmux -2"
# Parses given Markdown file into HTML and opens on command line
readmarkdown() {
  markdown $1 | lynx -stdin
}

##
#### GIT
##

# Shorthand for accessing git in general
alias g="git"
# Shorthand for commiting (opening vim for commit message)
alias gc="git commit"
# Shorthand for quickly ammending the last commit with no change in the message
alias gca="git commit --amend --no-edit"
# Shorthand for status of git branch
alias s="git s"
# Shorthand for diff of changes in git branch
alias d="git d"
# Shorthand for diff of staged changes in git branch
alias ds="git ds"
# Shorthand for checking out branches
alias co="git checkout"
# Shorthand for checking out master branch
alias com="git checkout master"
# Shorthand for checking out develop branch
alias cod="git checkout develop"
# Shorthand for staging all changed files in current directory
alias gad="git add ."
# Shorthand for undoing all changes since last commit
alias rhh="git reset --hard HEAD"
# Shorthand for undoing all changes including last commit
alias rhh1="git reset --hard HEAD~1"

##
#### JAVA
##

# Compiles and runs the given Java file
javar() {
  javac "$1.java"
  java $1
}


##
#### JEKYLL
##

# Starts the Jekyll server and watches for changes to files in blog
alias jek="jekyll serve --watch"
# Same as jek, but shows blog post drafts as real posts
alias drafts="jekyll serve --watch --drafts"

##
#### RAILS
##

# Migrates when using apartment gem
alias am="rake apartment:migrate"
# Rolls back when using apartment gem
alias ar="rake apartment:rollback"
# vanilla Rails migrate
alias m="rake db:migrate"
# Runs all specs in spec/ directory of project
alias r="rspec spec/"
# Opens simplecov coverage in chrome
alias simplecov="chrome coverage/index.html"
# Finds and force kills rails server process
alias killserver="ps aux | grep 'rails s' | awk '{print $2}' | xargs kill -9"
# Executes command in current bundle
alias be='bundle exec'
# Removes the postmaster.pid, a weird annoying postgres issue
alias postmaster="rm /usr/local/var/postgres/postmaster.pid"
# Kills all Rails development related processes
killrails() {
  pkill zeus; pkill ruby; pkill resque;
  pkill faye; pkill sidekiq; pkill rails;
  pkill node; pkill jruby;
}

##
#### OTHER
##

# Creates a randomly generated proverb
proverb() {
  NUMBER_WORDS=${1:-4}
  echo "
    of to in it is be as at so we he by or on do if me my up an go no us am the and for are but
    not you all any can had her was one our out day get has him his how man new now old see two
    way who boy did its let put say she too use inc med com box sun air rug" |
    tr -s '[[:punct:][:space:]]' '\n' |
    gshuf |
    head -n $NUMBER_WORDS |
    xargs
}

# Returns n random words from the UNIX shared dictionary
words() {
  NUMBER_WORDS=${1:-4}
  cat /usr/share/dict/words | gshuf | head -n $NUMBER_WORDS | xargs
}

# Returns n random words from the UNIX shared dictionary of connectives
connectives() {
  NUMBER_WORDS=${1:-4}
  cat /usr/share/dict/connectives| gshuf | head -n $NUMBER_WORDS | xargs
}
