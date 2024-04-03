#!/usr/bin/env bash

dir="$HOME/.config/hypr/rofi/themes"
theme="calc"

## Run
rofi \
    -show calc \
    -theme ${dir}/${theme}.rasi
