#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lf='lfrun'
alias ss="sh ~/.scripts/screenie.sh"

# pnpm
export PNPM_HOME="/home/n1l/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH:/home/n1l/.cargo/bin"
# pnpm end
