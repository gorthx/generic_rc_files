# my special prompt
# includes git status
PS1='\n\u@\h-\w/\n$(__git_ps1 "(%s) "):::-->'

# ignore duplicate entries in the history file
export HISTCONTROL=ignoredups

# don't attempt to tab-complete empty commands
shopt -s no_empty_cmd_completion

# make remote machine name show up in local ssh tab
export PROMPT_COMMAND="printf '\033]1;`uname -n`\007'"

#fix that super-annoying thing where your less output disappears from your scrollback buffer when you exit
#still need vim fix for that 
export LESS="-isX"

# mac-specific
# this gives me important unix utils, like tac,
# that REALLY SHOULD BE INSTALLED ALREADY if you're going to claim a mac is "just like linux"
export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin:"
export MANPATH="$MANPATH:/usr/local/opt/coreutils/libexec/gnuman:"

# command completion for kubectl
source "/usr/local/etc/bash_completion"
source <(kubectl completion bash)

# git command completion
# git.kernel.org/cgit/git/git.git/plain/contrib/completion/git-completion.bash
# git.kernel.org/cgit/git/git.git/plain/contrib/completion/git-prompt.sh
source /usr/bin/git-completion.bash
source /usr/bin/git-prompt.sh
# fun git colors
export GIT_PS1_SHOWDIRTYSTATE=42
export GIT_PS1_SHOWSTASHSTATE=42
export GIT_EDITOR='/usr/local/bin/vim'
# fun git aliases
alias ga='git add'
alias gc='git commit'
alias gits='git status' # not gs because that conflicts with ghostscript
alias gd='git diff'


# ... I should really get a .bash_aliases file
alias cpan='perl -MCPAN -e shell'
alias hg='history | grep'
