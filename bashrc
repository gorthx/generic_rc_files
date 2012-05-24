# my special prompt
# includes git status
PS1='\n\u@\h-\w/\n$(__git_ps1 "(%s) "):::-->'

# ignore duplicate entries in the history file
export HISTCONTROL=ignoredups

# this should actually be in the .bash_aliases file with all my other aliases
alias cpan='perl -MCPAN -e shell'

# git command completion
source /app/usr/local/bin/git-completion.bash
# fun git colors
export GIT_PS1_SHOWDIRTYSTATE=42
export GIT_PS1_SHOWSTASHSTATE=42
export GIT_EDITOR='/usr/local/bin/vim'

alias ga='git add'
alias gc='git commit'
alias gs='git status'
alias gd='git diff'

# don't attempt to tab-complete empty commands
shopt -s no_empty_cmd_completion

# make remote machine name show up in local ssh tab
# can FU cron jobs;  take care
printf "\033]1;`uname -n`\007"
printf "\033]2;`uname -n`\007"

#fix that super-annoying thing where your less output disappears from your scrollback buffer when you exit
#still need vim fix for that 
export LESS="-isX"




