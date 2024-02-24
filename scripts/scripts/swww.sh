#!/bin/bash
if pidof swww-daemon 
then
	exec swww kill
else
	exec /home/xujus/Documents/scripts/swwwStart1.sh
fi
