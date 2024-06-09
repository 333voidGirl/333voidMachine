#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# name
PS1="\[\033[31m\]\w\033[0m\]$ "

# aliases
alias scr="sh ~/.scripts/screenie/scr"
alias scr0="sh ~/.scripts/screenie/mainmon"
alias scr1="sh ~/.scripts/screenie/secmon"
alias scra="sh ~/.scripts/screenie/actwin"
alias ss="sh ~/.scripts/screenie/sel"
alias ht="htop"
alias bt="btop"
alias nv="nvim"
alias ls='ls --color=auto'
alias neof="neofetch --source ~/.ascii/neof/bat8 && sh ~/.scripts/text/demoniccurrents"
alias pc="pcmanfm"
alias rs="clear && source ~/.bashrc"

# alias yazi=yz + cds to whatever directory it leaves from
function yz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

#run neofetch on bash open
neof
