#!/bin/bash

# Run the 'hyprshade current' command and capture its output
output=$(hyprshade current)

# Format the output into JSON
if [ "$output" = "blue-light-filter-mild" ]; then
    json='{ "alt": "blue-light-filter-mild" }'
elif [ "$output" = "vibrance" ]; then
    json='{ "alt": "vibrance" }'
else
    json='{ "alt": "none" }'
fi

# Print the JSON
echo "$json"
