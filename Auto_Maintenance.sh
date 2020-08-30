# Auto Maintenance with progressbar and colorful text.
sleep 1
echo Press Enter to launch Auto Maintenance.
read
sleep 1
echo 'searching for updates' 
sleep 3
sudo apt-get update
echo -ne -e '\e[31m#(10%)\r' #red
sleep 3
echo 'Searching for software upgrades'
sleep 3
sudo apt-get upgrade
echo -ne -e '\e[34m##(20%)\r' #blue
sleep 3
echo 'Searching for_dist-upgrades'
sleep 3
sudo apt-get dist-upgrade
echo -ne -e '\e[32m#####(30%)\r' #green
sleep 3
echo 'cleaning up the apt-get cache'
sleep 3
sudo apt-get autoclean
echo -ne -e '\e[31m#############(60%)\r' #red
sleep 3
echo 'Cleaning no longer needed packages'
sleep 3
sudo apt-get autoremove
echo -ne -e '\e[32m#######################(100%)\r' #Green
echo -ne '\n'
echo 'Freeing up Hard Disk space'
sleep 3
sudo apt-get clean
echo -e '\e[91m\e[5m  Auto Maintenance Mission Complete' #Blink
sleep 20
