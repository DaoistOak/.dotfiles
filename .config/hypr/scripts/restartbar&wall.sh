#!/bin/sh
killall waybar
killall waypaper
killall swww
waypaper --restore
waybar -c ~/.config/waybar/config.json
