# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Default Theme
# ------------------------------------------------------------------------------

# Colors
background='#24273a'
foreground='#cad3f5'
color0='#181926'
color1='#ed8796'
color2='#a6da95'
color3='#eed49f'
color4='#8aadf4'
color5='#ee99a0'
color6='#8bd5ca'
color7='#cad3f5'
color8='#4C566A'
color9='#1e2030'
color10='#f5bde6'
color11='#EBCB8B'
color12='#81A1C1'
color13='#B48EAD'
color14='#8FBCBB'
color15='#b8c0e0'

accent='#f4dbd6'
light_value='0.05'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/catppuccin"

# Polybar
polybar_font='Iosevka Nerd Font:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='Papirus-Dark'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# Geany
geany_colors='catppuccin-macchiato.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='catppuccin-macchiato-rosewater-standard+default'
icon_theme='Papirus-Dark'
cursor_theme='catppuccin-macchiato-rosewater'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='10x42'
dunst_origin='top-right'
dunst_font='Iosevka Custom 9'
dunst_border='1'
dunst_separator='1'

# Picom
picom_backend='glx'
picom_corner='14'
picom_shadow_r='14'
picom_shadow_o='1'
picom_shadow_x='-14'
picom_shadow_y='-14'
picom_blur_method='dual_kawase'
picom_blur_strength='8'

# Bspwm
bspwm_fbc="$accent"
bspwm_nbc="$background"
bspwm_abc="$color5"
bspwm_pfc="$color2"
bspwm_border='1'
bspwm_gap='5'
bspwm_sratio='1'
