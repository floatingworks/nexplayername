#!/bin/bash  
#
# Changes your nexuiz username dependent on Banshee media file
# You will need to manually create the file ~/youruser/.nexuiz/data/namechange.cfg
# You will need to put in your autoexec.cfg file the following two lines
# 	alias update exec namechange.cfg
# 	bind k update
# Then run this script
# and use the k key (or whatever you bound the alias update to) to update your username in game
# any comments 
#
#TODO if namechange.cfg doesnt exist, create it

while true; do
	if [ "$(pidof banshee)" ]; then
		sleep 40 
		UP=$(banshee --query-title)
		GROUP=$(banshee --query-artist)
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (${GROUP} - ${UP})\""/ /home/wellbourne/.nexuiz/data/namechange.cfg
	else
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (silent)\""/ /home/wellbourne/.nexuiz/data/namechange.cfg
	fi
done
