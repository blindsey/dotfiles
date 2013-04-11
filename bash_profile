# Environment variables
export NODE_ENV=development
export RAILS_ENV=development

# Aliases
alias ls='ls -G'
alias startmongo='/usr/local/bin/mongod --fork --logpath /var/log/mongodb.log --logappend'
alias rmemcached='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist && launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist'
alias tunnel='ssh -L 8140:localhost:8140 puppet-ben'

source /usr/local/Cellar/git/1.8.1.3/etc/bash_completion.d/git-completion.bash
source /usr/local/Cellar/git/1.8.1.3/etc/bash_completion.d/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
PS1='\[\033]0;\u@\h: \w\007\]\h:\w$(__git_ps1 " \[\033[1;31m\](%s)\[\033[0m\]")\\$ '
