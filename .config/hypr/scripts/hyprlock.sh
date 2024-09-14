#!/usr/bin/env bash

# Check if /tmp/hyprlock directory exists, if not create it
if [ ! -d "/tmp/hyprlock" ]; then
    mkdir -p /tmp/hyprlock
fi

# Take screenshot using grim and save it as /tmp/hyprlock/screenshot.png
grim /tmp/hyprlock/screenshot.png
hyprlock
killall hyprlock
