#!/bin/sh

#DWM Clock
#while true; do
#	xsetroot -name "| $( date +"%D %r" ) | (()) |"
#   sleep 1    # Update time every second
#done &

#Autostart
pulseaudio -D
cadence-session-start --system-start &
nitrogen --restore &

#Boot fix
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        # shellcheck source=/dev/null
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

#Mount 2nd Drive
doas mount /dev/sda1 /mnt/meow

#Run Window Manager
exec i3
