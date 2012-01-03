# Environment variables
export NODE_ENV=development

# Aliases
alias ls='ls -G'
alias startmongo='/usr/local/bin/mongod --fork --logpath /var/log/mongodb.log --logappend'

# Git tab completion
source /usr/local/Cellar/git/1.7.8/etc/bash_completion.d/git-completion.bash
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

