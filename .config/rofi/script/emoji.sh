#!/usr/bin/env bash


dir="$HOME/.config/rofi/themes"
theme="emoji"

## Run
rofi \
    -show emoji \
    -theme ${dir}/${theme}.rasi
