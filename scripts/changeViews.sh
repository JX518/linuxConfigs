#!/bin/bash
if cmp /home/xujus/.config/hypr/2.conf /home/xujus/.config/hypr/hyprland.conf
then
	cp /home/xujus/.config/hypr/1.conf /home/xujus/.config/hypr/hyprland.conf
else
	cp /home/xujus/.config/hypr/2.conf /home/xujus/.config/hypr/hyprland.conf
fi
