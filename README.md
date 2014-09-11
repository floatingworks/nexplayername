Changes your nexuiz username dependent on currently playing Banshee media file

Step 1 - install Banshee if it isnt already installed

Step 2 - move the .cfg files to ~/.nexuiz/data/

Step 3 - run ./nexplayername.sh


Added
=====
11/06/2013 - now loops between namechange.cfg and namechange2.cfg with the defer command so the script automatically runs every 60 seconds
11/06/2013 - if namechange.cfg doesnt exist, create it

TODO
====
use something like http://ubuntuforums.org/showthread.php?t=1562395 to make it non banshee specific
