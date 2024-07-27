#!/bin/sh
killall waybar
killall swaync
waybar -c .config/hypr/waybar/config.json -s .config/hypr/waybar/style.css
swaync &
