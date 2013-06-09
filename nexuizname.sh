#!/bin/bash  
# Check readme for setup

# TODO
# if the namechange.cfg file doesnt exist create it.
if [ ! -f /home/chris/.nexuiz/data/namechange.cfg ]; then 
    echo 'seta songlist "wellbourne (silent)" ' > /home/chris/.nexuiz/data/namechange.cfg
fi

while true; do
	if [ "$(pidof banshee)" ]; then
<<<<<<< HEAD
        # sleep script for 1 minutes in production
        # for testing I set this to 15 seconds
		sleep 1m 
		#sleep 15
		TITLE=$(banshee --query-title)
		GROUP=$(banshee --query-artist)
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (${GROUP} - ${TITLE})\""/ /home/chris/.nexuiz/data/namechange.cfg
else
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (silent)\""/ /home/chris/.nexuiz/data/namechange.cfg
=======
		sleep 40 
		UP=$(banshee --query-title)
		GROUP=$(banshee --query-artist)
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (${GROUP} - ${UP})\""/ /home/wellbourne/.nexuiz/data/namechange.cfg
	else
		sed -i "s/seta songlist.*/seta songlist \"wellbourne (silent)\""/ /home/wellbourne/.nexuiz/data/namechange.cfg
>>>>>>> 4ebfb805aa21c9b8c0cae5fa8b36db037ee7e1a4
	fi
done
