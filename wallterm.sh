#!/bin/bash
#I got this from https://bbs.archlinux.org/viewtopic.php?id=154094
#For some reason this opens up three terminals, one properly pinned, another fullscreen but not pinned, and another normal. Not sure what causes that.

#Too use this, mark it as exicutable then add it to your list of startup applications.

#Give a name to the terminal window.
<<<<<<< HEAD
TITLE="wallterm"
=======
TITLE="Wallterm"
>>>>>>> 0037ab66264e232978f7c4fec59d6e55d9bb1552
#HxW size given in # of charactors. Example: 25x60
DIMENSIONS=25x60
#X+Y position given in pixels. Example: 100+200
POSITION=100+200
TERMOPTS="--hide-borders --hide-toolbar --hide-menubar --maximize --title=$TITLE"

if [[ -z $DIMENSIONS || -z $POSITION ]] || [[ -z $TITLE ]] ; then
	echo "wallterm has not been configured! Please edit this script before running it."
	exit 1
fi

xfce4-terminal $TERMOPTS --geometry=$DIMENSIONS+$POSITION &
#gnome-terminal $TERMOPTS --geometry=$DIMENSIONS+$POSITION &

opt1="-r "$TITLE" -b add,below,sticky"
opt2="-r "$TITLE" -b add,skip_taskbar,skip_pager"

while true 
do
	if [[ "$(wmctrl -l | grep -o "$TITLE")" = $TITLE ]] ; then 
		wmctrl $opt1 && wmctrl $opt2
		echo 'done!'
		break
	fi
done
