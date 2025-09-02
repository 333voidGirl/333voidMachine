#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# name
PS1="\[\033[31m\]\w\033[0m\]$ "

# aliases
# screenshots
alias scr="sh ~/.scripts/screenie/scr"
alias scr0="sh ~/.scripts/screenie/scr0"
alias scr1="sh ~/.scripts/screenie/scr1"
alias scra="sh ~/.scripts/screenie/scra"
alias ss="sh ~/.scripts/screenie/ss"
# cli
alias ht="htop"
alias bt="btop"
# alias vi="vim"
# alias nv="nvim"
alias ls='ls --color=auto'
alias neof="neofetch --source ~/.ascii/neof/bat8 && sh ~/.scripts/text/demoniccurrents"
function yz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
alias yzm="yz /mnt/meow/mediaETC"
alias wc="weechat"
# gui
alias pc="pcmanfm"
# system
alias rs="clear && source ~/.bashrc"
alias cl="clear"
alias prs="systemctl --user restart pipewire.service"

#run neofetch on bash open
neof
