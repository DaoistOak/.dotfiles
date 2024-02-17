#!/usr/bin/env bash

dir="$HOME/.config/rofi/themes"
theme="calc"

## Run
rofi \
    -show calc \
    -theme ${dir}/${theme}.rasi
