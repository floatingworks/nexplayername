#!/bin/bash  

while true; do
	if [ "$(pidof banshee)" ]; then
        # sleep program for 2 minutes in production
        # for testing I set this to 15 seconds
		#sleep 2m 
		sleep 15
		UP=$(banshee --query-title)
		GROUP=$(banshee --query-artist)
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (${GROUP} - ${UP})\""/ /home/wellbourne/.nexuiz/data/namechange.cfg
else
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (silent)\""/ /home/wellbourne/.nexuiz/data/namechange.cfg
	fi
done
