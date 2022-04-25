#!/bin/bash

read -r -p "Are You Sure You Want To Clean Up? [Y/n] " input
 
case $input in
      [yY][eE][sS]|[yY])
            echo "Hacker Says Yes, Clean Me Up"
            sleep 5
            ;;
      [nN][oO]|[nN])
            echo "You say Shit Noooo!, Exit Right Now"
            exit 1
            ;;
      *)
            echo "Invalid input..."
            exit 1
            ;;
esac

##Clean all log files
rm -rf /var/log/*/**


##Clean Caches
apt-get clean

##Remove Trash
rm -rf /home/USERNAME/.local/share/Trash/*/**
rm -rf /root/.local/share/Trash/*/**

#Remove files in folder
rm -rf /home/USERNAME/*/**

#Remove bash history
history -c

#Cleaning complete
echo "Cleaning is complete"
