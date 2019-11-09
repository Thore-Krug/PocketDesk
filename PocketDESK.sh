#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

MYDIR=`dirname $0`
source "$MYDIR/Scripts/spinner.sh"

# Clear the screen
reset

echo "+---------------------------------------------------------------------+"
echo "|                      Installing stuff for you                       |"
echo "|                   Go make yorself a cup of coffee                   |"
echo "|                                                                     |"
echo "|              PocketDESK was brought to you by AllGray!              |"
echo "+---------------------------------------------------------------------+"



$MYDIR/Scripts/dependencies.sh 




$MYDIR/Scripts/pockethome.sh 



$MYDIR/Scripts/touchscreen.sh 



$MYDIR/Scripts/keyboard.sh &> /dev/null



$MYDIR/Scripts/battery.sh 



$MYDIR/Scripts/sessions.sh




$MYDIR/Scripts/hostname.sh 




$MYDIR/Scripts/wallpaper.sh 



# Finishing up
echo "+---------------------------------------------------------------------+"
echo "|                           Congratulation!                           |"
echo "|                        Your install is done!                        |"
echo "|                                                                     |"
echo "|                          Reboot and enjoy                           |"
echo "|                                                                     |"
echo "|              PocketDESK was brought to you by AllGray!              |"
echo "+---------------------------------------------------------------------+"
