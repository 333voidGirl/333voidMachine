#!/bin/sh
# shell script to prepend i3status with more stuff

i3status -c ~/.config/i3/i3status | while :
do
        read line
        echo "(())" || exit 1
done