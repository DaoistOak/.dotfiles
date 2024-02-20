#!/bin/bash

## Get the last synchronization date
#last_sync_date=$(date -d "$(stat -c %y /var/lib/pacman/sync/core.db)" +"%Y-%m-%d")

## Get today's date
#today=$(date +"%Y-%m-%d")

## Calculate the difference in days
#difference=$(( ($(date -d "$today" +%s) - $(date -d "$last_sync_date" +%s)) / (60*60*24) ))

# Check if the difference is more than 3 days
#if [ "$difference" -gt 3 ]; then
    ## Run sudo pacman -Syu
    #echo "Synchronizing and updating the system..."
    #kitty --class="once" "sudo pacman -Syu"
#else
    # Run pacman -Qu and count available updates
    updates=$(pacman -Qu | wc -l)
    echo "$updates"

#fi
