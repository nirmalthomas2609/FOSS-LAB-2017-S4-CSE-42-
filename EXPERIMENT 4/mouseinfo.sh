#!/bin/sh
echo -e "..........................OS............................."

echo -e "`cat /etc/os-release`"

echo -e " ............................Available Shells..................."

echo "`cat /etc/shells`"

echo -e "................................Mouse information...................................."

echo -e "`xset q`"

echo "............................Memmory Information.........................."

echo -e "`cat /proc/meminfo` "

echo "..............................Hard disk information......................."

echo -e "Driver: ` sudo hdparm -I /dev/sda` "

echo -e " ..........................File mounted.................................."

echo " `cat /proc/mounts `"
