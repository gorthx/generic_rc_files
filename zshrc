
# git.kernel.org/cgit/git/git.git/plain/contrib/completion/git-prompt.sh
source /usr/local/bin/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=42
export GIT_PS1_SHOWSTASHSTATE=42

# zsh version of my standard prompt
NEWLINE=$'\n'
setopt PROMPT_SUBST ; PS1='%n@%m - %~${NEWLINE}$(__git_ps1 "(%s) "):::-->'

# zsh allow comments on the command line
setopt interactivecomments

export HISTCONTROL=ignoredupso
export LESS=eFRX

# this is just silly
alias hg='history 1 | grep'

# mac-specific
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

alias ga='git add'
alias gc='git commit'
alias gits='git status' # not gs because that conflicts with ghostscript
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gd='git diff'
alias gp='git fetch --all --prune; git gc'
