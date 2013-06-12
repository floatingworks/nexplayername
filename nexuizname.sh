#!/bin/bash  
# Check readme for setup
line1='seta songlist "wellbourne (silent)"'
line2='name $songlist'
line3='defer 30 "exec namechange2.cfg"'
# if the namechange.cfg file doesnt exist create it.
if [ ! -f ~/.nexuiz/data/namechange.cfg ]; then 
    cat  > ~/.nexuiz/data/namechange.cfg <<EOF
${line1}
${line2}
${line3}
EOF
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
