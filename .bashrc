#
# ~/.bashrc
#

# If not running interactively, don't do anything
 [[ $- != *i* ]] && return

PS1="\[\033[31m\]\w\033[0m\]$ "

alias ls='ls --color=auto'
alias ht="htop"
alias scr="sh ~/.scripts/screenie/scr"
alias scr0="sh ~/.scripts/screenie/mainmon"
alias scr1="sh ~/.scripts/screenie/secmon"
alias scra="sh ~/.scripts/screenie/actwin"
alias ss="sh ~/.scripts/screenie/sel"
alias neof="neofetch --source ~/.ascii/bat8 && sh ~/.scripts/text/demoniccurrents"
alias rs="clear && source ~/.bashrc"

function yz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# pnpm
export PNPM_HOME="/home/n1l/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH:/home/n1l/.cargo/bin"
# pnpm end

neof
