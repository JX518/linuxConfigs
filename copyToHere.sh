#!/bin/bash
rm -r /home/xujus/Documents/configsGit/scripts/*
rm -r /home/xujus/Documents/configsGit/configs/* 
mkdir /home/xujus/Documents/configsGit/configs/hypr/
mkdir /home/xujus/Documents/configsGit/configs/waybar/
mkdir /home/xujus/Documents/configsGit/configs/swaync/


#hyprshot
cp /bin/hyprshot-gui /home/xujus/Documents/configsGit/scripts/hyprshot-gui

#hyprland
cp -r /home/xujus/.config/hypr/hyprland.conf /home/xujus/Documents/configsGit/configs/hypr/hyprland.conf

#linux environment
cp -r /etc/environment /home/xujus/Documents/configsGit/configs/environment

#theme
cp -r /home/xujus/.profile /home/xujus/Documents/configsGit/configs/.profile
cp -r /home/xujus/.config/gtk-2.0 /home/xujus/Documents/configsGit/configs/gtk-2.0
cp -r /home/xujus/.config/gtk-3.0 /home/xujus/Documents/configsGit/configs/gtk-3.0

#emacs
cp -r /home/xujus/.emacs /home/xujus/Documents/configsGit/configs/.emacs

#brave
cp -r /home/xujus/.config/brave-flags.conf /home/xujus/Documents/configsGit/configs/brave-flags.conf

#kitty terminal
cp -r /home/xujus/.config/kitty/kitty.conf /home/xujus/Documents/configsGit/configs/kitty.conf
