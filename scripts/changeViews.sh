#!/bin/bash
if test -f "/home/xujus/Documents/configsGit/configs/1"
then
	mv /home/xujus/Documents/configsGit/configs/1 /home/xujus/Documents/configsGit/configs/2
	cp /home/xujus/.config/hypr/1.conf /home/xujus/.config/hypr/hyprland.conf 
else
	mv /home/xujus/Documents/configsGit/configs/2 /home/xujus/Documents/configsGit/configs/1
	cp /home/xujus/.config/hypr/2.conf /home/xujus/.config/hypr/hyprland.conf
fi
