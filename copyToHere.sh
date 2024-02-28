#!/bin/bash
rm -r /home/xujus/Documents/configsGit/Wallpaper/*
rm -r /home/xujus/Documents/configsGit/scripts/*
cp -r /etc/environment /home/xujus/Documents/configsGit/configs/environment
cp -r /home/xujus/.emacs /home/xujus/Documents/configsGit/configs/.emacs
cp -r /home/xujus/.config/hypr/hyprland.conf /home/xujus/Documents/configsGit/configs/hyprland.conf
cp -r /home/xujus/.config/waybar/* /home/xujus/Documents/configsGit/configs/
cp -r /home/xujus/.config/brave-flags.conf /home/xujus/Documents/configsGit/configs/brave-flags.conf
cp -r /home/xujus/Documents/scripts/* /home/xujus/Documents/configsGit/scripts/
cp -r /home/xujus/Pictures/Wallpaper/* /home/xujus/Documents/configsGit/Wallpaper/
cp -r /home/xujus/.alacritty.toml /home/xujus/Documents/configsGit/configs/.alacritty.toml
