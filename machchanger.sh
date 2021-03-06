#!/usr/bin/env sh

# This script automates changing your MAC addressing as well as extending GNU MACChanger to support notifications.
# Usage: chmac interface [options]
# Script by Arashi!1IXzW.VjDs
# This software is released under the MIT/X11 Consortium License 
# http://opensource.org/licenses/MIT


while [  $# -gt 0 ]
do
    interface="$1"
    shift
    
    case "$1" in
        -a|-A|-r|-e)
            opt=$1
            sudo ifconfig $interface down
            vendor=$(sudo macchanger ${opt} $interface | grep New | sed 's/^.*(//;s/)$//')
            sudo ifconfig $interface up
            notify-send "MAC Address" "Successfully Changed:\n $(echo $vendor) \n [$(ifconfig -a | grep $interface | sed 's/^.*HWaddr*//g')]"
            shift            
            ;;
        -p)
            sudo ifconfig $interface down 
            vendor=$(sudo macchanger -p $interface | grep New | sed 's/^.*(//;s/)$//')
            notify-send "MAC Address" "Successfully Restored: $(echo $vendor)"
            sudo ifconfig $interface up
            shift
            ;;
         *)
            echo >&2 "Invalid Argument:  Usage: chmac interface [options]\nExample: chmac wlan0 -r"
            exit            
            ;;
    esac
done


