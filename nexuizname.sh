#!/bin/bash  
# Check readme for setup

# if the namechange.cfg file doesnt exist create it.
if [ ! -f /home/chris/.nexuiz/data/namechange.cfg ]; then 
    echo 'seta songlist "wellbourne (silent)" ' > ~/.nexuiz/data/namechange.cfg
fi

while true; do
	if [ "$(pidof banshee)" ]; then
		sleep 1m 
		TITLE=$(banshee --query-title)
		GROUP=$(banshee --query-artist)
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (${GROUP} - ${TITLE})\""/ ~/.nexuiz/data/namechange.cfg
    	else
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (silent)\""/ ~/.nexuiz/data/namechange.cfg
	fi
done
