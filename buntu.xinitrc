#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#prevent the screen from blanking
xset s off &
xset -dpms &
xset s noblank &

#Merges .Xresources
xrdb -merge ~/.Xresources
