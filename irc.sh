#!/bin/bash
#I got this from https://wiki.archlinux.org/index.php/Terminal_as_a_Transparent_Wallpaper and edited it lightly.

xfce4-terminal --hide-borders --hide-toolbar --hide-menubar --title=desktopconsole --maximize --command=ssh\ kunoichi@technica.sx & 
wmctrl -r desktopconsole -b add,below,sticky
wmctrl -r desktopconsole -b add,skip_taskbar,skip_pager
