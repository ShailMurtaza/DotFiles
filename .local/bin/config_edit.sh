#!/usr/bin/env bash

TERM="footclient"

declare -A configs
configs+=(
  [Sway WM]="$HOME/.config/sway/config"
  [Waybar]="$HOME/.config/waybar"
  [Neovim]="$HOME/.config/nvim"
  [Foot]="$HOME/.config/foot/foot.ini"
)

choice=$(printf "%s\n" "${!configs[@]}" | wofi \
  --dmenu \
  --prompt "Configuration:" \
  --lines 5 \
  --width 200 \
)

[ -n "$choice" ] && $TERM nvim "${configs[$choice]}" & disown
exit
