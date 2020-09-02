#!/bin/bash
# using linux mint 20 64bit
# bash script for maintenance. 
# open terminal in same folder as script then type in terminal ./maintenance_mint.sh
# from zeus/1nam  clean,autoremove,update,upgrade,notify,suspend.
echo 'each job listed takes around ten seconds then pc will suspend.'
echo ''
echo 'starting to clean'
sudo apt-get clean
sleep 10
echo 'using autoremove'
sudo apt-get autoremove
sleep 9
echo 'checking for updates'
sudo apt-get update
sleep 8
echo 'looking for upgrades'
sudo apt-get upgrade
sleep 7
echo 'finished.'
notify-send " suspend in 10s :)"
(sleep 10s ;  xset dpms force suspend)

