#!/bin/bash
# linux mint 20 64bit using terminal and a bash script to clean up.
# fast clean up with notify.
echo 'please press enter to continue or ctrl + z to exit.'
read 
echo 'You pressed enter'
echo ''  
echo 'Starting Proccess Please enter your password.'
sleep 2
echo ''
echo 'your pc log_in password needs entered to run this script' 
sudo apt-get update

echo 'Searching for_updates_upgrades'
sudo apt-get dist-upgrade

echo 'cleaning up the apt-get cache'
sudo apt-get autoclean

echo 'Cleaning no longer needed packages'
sudo apt-get autoremove

echo 'Freeing up disk space'
sudo apt-get clean
echo -ne -e '\e[31m#(10%)\r' #red
sleep 1
echo -ne -e '\e[34m##(20%)\r' #blue
sleep 1
echo -ne -e '\e[32m#####(30%)\r' #green
sleep 1
echo -ne -e '\e[31m#############(60%)\r' #red
sleep 1
echo -ne -e '\e[91m\e[5m#######################(100%)\r' #Blink red
echo -ne '\n'
notify-send " Finished Cleaning :)"
echo "please press enter to exit."
read
