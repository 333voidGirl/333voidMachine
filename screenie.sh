#!/bin/sh

#Screenshot
screenie () {
	scrot -s -e 'xclip -selection clipboard -t image/png -i $f' --freeze	
}

screenie
