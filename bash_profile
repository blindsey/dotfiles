alias ls='ls -G'

export NODE_ENV=development
export RACK_ENV=development
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

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias start_pg='pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log start'
alias stop_pg='pg_ctl -D /usr/local/var/postgres/ stop'
alias guard='guard --no-bundler-warning'
