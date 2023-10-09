#!/usr/bin/bash

declare -A configs
configs+=(
[i3 WM]="$HOME/.config/i3/config"
[i3 Blocks]="$HOME/.config/i3blocks/config"
[Picom]="$HOME/.config/i3/picom.conf"
[Kitty]="$HOME/.config/kitty/kitty.conf"
)

choice=$(printf "%s\n" "${!configs[@]}" | dmenu \
    -nb "${COLOR_BACKGROUND:-#151515}" \
    -nf "${COLOR_DEFAULT:-#aaaaaa}" \
    -sf "${COLOR_HIGHLIGHT:-#589cc5}" \
    -sb "#1a1a1a" \
    -i -p \
    "Configuration:" -l 10
)

[ $? = 0 ] && neovide ${configs[$choice]}

