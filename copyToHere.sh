#!/bin/bash
rm -r /home/xujus/Documents/configsGit/Wallpaper/*
rm -r /home/xujus/Documents/configsGit/scripts/*
rm -r /home/xujus/Documents/configsGit/configs/*

#hyprshot
cp /bin/hyprshot-gui /home/xujus/Documents/configsGit/scripts/hyprshot-gui

#hyprland
cp -r /home/xujus/.config/hypr/hyprland.conf /home/xujus/Documents/configsGit/configs/hyprland.conf
cp -r /home/xujus/.config/hypr/hyprpaper.conf /home/xujus/Documents/configsGit/configs/hyprpaper.conf

#linux environment
cp -r /etc/environment /home/xujus/Documents/configsGit/configs/environment

#emacs
cp -r /home/xujus/.emacs /home/xujus/Documents/configsGit/configs/.emacs

#waybar
cp -r /home/xujus/.config/waybar/style.css /home/xujus/Documents/configsGit/configs/style.css
cp -r /home/xujus/.config/waybar/config /home/xujus/Documents/configsGit/configs/config

#brave
cp -r /home/xujus/.config/brave-flags.conf /home/xujus/Documents/configsGit/configs/brave-flags.conf

#alacritty terminal
cp -r /home/xujus/.alacritty.toml /home/xujus/Documents/configsGit/configs/.alacritty.toml

#wallpapers and scripts
cp -r /home/xujus/Documents/scripts/* /home/xujus/Documents/configsGit/scripts/
cp -r /home/xujus/Pictures/Wallpaper/* /home/xujus/Documents/configsGit/Wallpaper/
