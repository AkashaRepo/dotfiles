#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#prevent the screen from blanking
xset s off &
xset -dpms &
xset s noblank &

#Merges .Xresources
xrdb -merge ~/.Xresources

#Starts the synergy client, if synergy dosn't work the IP address here might need to be changed.
synergyc 192.168.1.12


#Starts the WM, THIS GOES LAST
exec wmii
