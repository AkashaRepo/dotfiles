#!/bin/bash
#This is a script to remind the user how to wire a USB console cable's colored leads to a Raspberry Pi's pins, and then connects to the Pi using the cable.
echo 'Ensure the leads are connected as follows' #Shows the user a diagram and then asks for confirmation.
echo '┎━━━━━━━━━━━━'
echo '┃R*BWG*******'
echo '┃************'
echo is this correct?
select yn in "Yes" "No"; do 
    case $yn in
        Yes ) sudo screen /dev/ttyUSB0 115200; break;; #If the user confirms that they have connected the wires, runs the following command.
        No ) exit;; #Otherwise, the script ends.
    esac
done