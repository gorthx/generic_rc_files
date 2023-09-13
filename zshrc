# zsh version of my standard prompt
NEWLINE=$'\n'
PS1="%n@%m - %~${NEWLINE}:::-->"

# zsh allow comments on the command line
setopt interactivecomments

export HISTCONTROL=ignoredupso
export LESS="-isX"

alias ga='git add'
alias gc='git commit'
alias gits='git status' # not gs because that conflicts with ghostscript
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gd='git diff'
alias gp='git fetch --all --prune; git gc'
