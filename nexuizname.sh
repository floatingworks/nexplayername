#!/bin/bash  

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
