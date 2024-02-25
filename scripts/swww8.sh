#!/bin/bash
if pidof swww-daemon 
then
	swww img ~/Pictures/Wallpaper/swww.*
	exec swww kill
else
	swww init
	swww img ~/Pictures/Wallpaper/swww8.*
fi
