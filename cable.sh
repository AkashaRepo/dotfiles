#!/bin/bash
#Shows the user a diagram and then asks for confirmation.
echo 'Ensure the leads are connected as follows'
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