#!/bin/bash
echo Ensure the leads are connected as follows
echo Red
echo -
echo Black
echo White
echo Green
echo is this correct?
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo screen /dev/ttyUSB0 115200; break;;
        No ) exit;;
    esac
done
