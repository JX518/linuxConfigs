#!/bin/bash
if pidof swww-daemon 
then
	exec swww kill
else
	swww init
	swww img ~/Pictures/Wallpaper/swww8.*
fi
