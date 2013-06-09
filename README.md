Changes your nexuiz username dependent on currently playing Banshee media file

Step 1 - manually create the file ~/youruser/.nexuiz/data/namechange.cfg

Step 2 - You will need to put in your autoexec.cfg file the following two lines
alias update exec namechange.cfg
bind k update

Step 3 - run this script ./nexplayername.sh &

Step 4 - use the k key (or whatever you bound the alias update to) to update your username in game


TODO
====
if namechange.cfg doesnt exist, create it
use something like http://ubuntuforums.org/showthread.php?t=1562395 to make it non banshee specific
