#!/usr/bin/env bash


dir="$HOME/.config/hypr/rofi/themes"
theme="emoji"

## Run
rofi \
	-modi "emoji:rofimoji" \
    -show emoji \
    -theme ${dir}/${theme}.rasi
