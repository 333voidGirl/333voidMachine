#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lf='lfrun'
alias scr="sh ~/.scripts/screenie/scr"
alias scra="sh ~/.scripts/screenie/actwin"
alias ss="sh ~/.scripts/screenie/sel"
alias neof="neofetch --source ~/.ascii/bat8"

# pnpm
export PNPM_HOME="/home/n1l/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH:/home/n1l/.cargo/bin"
# pnpm end
