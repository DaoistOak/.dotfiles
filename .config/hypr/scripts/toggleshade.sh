#!/bin/bash

# Function to check the current state
get_current_state() {
    hyprshade current
}

# Function to toggle between vibrance and blue-light-filter
toggle_state() {
    current_state=$(get_current_state)
    if [ "$current_state" = "vibrance" ]; then
        hyprshade on blue-light-filter-mild
        echo "Switched to blue-light-filter mode."
    else
        hyprshade on vibrance
        echo "Switched to vibrance mode."
    fi
}

# Main function to handle the toggle
main() {
    toggle_state
}

# Call the main function
main
