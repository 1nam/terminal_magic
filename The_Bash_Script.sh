#! /bin/bash

# Ask the user yes or no

echo Hello, Would you Like me to Start? type_yes or no
read varname
sleep 3
echo You Said $varname 
echo Starting Proccess
sleep 3
echo your pc log_in password needs entered to run this script 
sudo apt-get update

echo Searching for_updates_upgrades
sudo apt-get dist-upgrade

echo cleaning up the apt-get cache
sudo apt-get autoclean

echo Cleaning no longer needed packages
sudo apt-get autoremove

echo Freeing up disk space
sudo apt-get clean
