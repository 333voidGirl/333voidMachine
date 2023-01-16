#!/bin/sh

#clock
while true; do
   xsetroot -name "| $( date +"%A %B %d, %Y; %r" ) | (:) |"
   sleep 1    # Update time every second
done &

#autostart
cadence-session-start --system-start &

#DWM
exec dwm
