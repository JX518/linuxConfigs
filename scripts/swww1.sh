#!/bin/bash
if pidof swww-daemon 
then
	swww img ~/Pictures/Wallpaper/swww0.*
	exec swww kill
else
	swww init
	swww img ~/Pictures/Wallpaper/swww1.*
fi
