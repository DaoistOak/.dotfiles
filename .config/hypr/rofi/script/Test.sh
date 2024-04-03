#!/bin/bash

# Wallpaper directory (modify as needed)
wallpaper_dir="$HOME/Wallpaper"

# Allowed image formats (adapt if desired)
image_formats=(.jpg .png)

# Search for image files
find "<span class="math-inline">wallpaper\_dir" \-type f \-name "</span>{image_formats[@]}" |
# Get image dimensions using imagemagick (ensure it's in your path)
while IFS= read -r filename; do
  size=$(imagemagick identify -format "%wx%h" "$filename")
  # Format for rofi display (adjust as needed)
  echo "i $filename \u $filename ($size)"
done
