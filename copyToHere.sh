#!/bin/bash
rm -r /home/xujus/Documents/configsGit/Wallpaper/*
rm -r /home/xujus/Documents/configsGit/scripts/*

cp -r /home/xujus/.config/hypr/hyprland.conf /home/xujus/Documents/configsGit/configs/hyprland.conf
cp -r /home/xujus/.config/hypr/1.conf /home/xujus/Documents/configsGit/configs/1.conf
cp -r /home/xujus/.config/hypr/2.conf /home/xujus/Documents/configsGit/configs/2.conf

cp -r /etc/environment /home/xujus/Documents/configsGit/configs/environment
cp -r /home/xujus/.emacs /home/xujus/Documents/configsGit/configs/.emacs
cp -r /home/xujus/.config/waybar/style.css /home/xujus/Documents/configsGit/configs/style.css
cp -r /home/xujus/.config/waybar/config /home/xujus/Documents/configsGit/configs/config
cp -r /home/xujus/.config/brave-flags.conf /home/xujus/Documents/configsGit/configs/brave-flags.conf
cp -r /home/xujus/.alacritty.toml /home/xujus/Documents/configsGit/configs/.alacritty.toml

cp -r /home/xujus/Documents/scripts/* /home/xujus/Documents/configsGit/scripts/
cp -r /home/xujus/Pictures/Wallpaper/* /home/xujus/Documents/configsGit/Wallpaper/
