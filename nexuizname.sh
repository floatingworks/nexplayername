#!/bin/bash  
# TODO
# if the namechange.cfg file doesnt exist create it.
while true; do
	if [ "$(pidof banshee)" ]; then
        # sleep script for 1 minutes in production
        # for testing I set this to 15 seconds
		sleep 1m 
		#sleep 15
		TITLE=$(banshee --query-title)
		GROUP=$(banshee --query-artist)
        echo playing ${GROUP} by ${UP}
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (${GROUP} - ${TITLE})\""/ /home/chris/.nexuiz/data/namechange.cfg
else
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (silent)\""/ /home/chris/.nexuiz/data/namechange.cfg
	fi
done
