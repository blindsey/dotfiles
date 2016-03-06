alias ls='ls -G'

export NODE_ENV=development
export RAILS_ENV=development

if [ -d /Library/Developer/CommandLineTools/usr/share/git-core/ ]; then
  source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
  source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
  GIT_PS1_SHOWUPSTREAM="auto"
  GIT_PS1_SHOWCOLORHINTS="yes"
  GIT_PS1_SHOWDIRTYSTATE="yes"
  GIT_PS1_SHOWUNTRACKEDFILES="yes"
  export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'
fi

export PATH=~/.gem/ruby/2.2.0/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
