#!/usr/bin/env bash

declare -A actions=(
    ["⏻ Poweroff"]="loginctl poweroff"
    [" Reboot"]="loginctl reboot"
    [" Lock"]="~/.local/bin/lock.sh"
    [" Logout"]="swaymsg exit"
    [" Suspend"]="~/.local/bin/lock.sh && sleep 0.4 && loginctl suspend"
    ["♞ Switch User"]="dm-tool switch-to-greeter"
)

choice=$(printf "%s\n" "${!actions[@]}" | sort | wofi \
    --dmenu \
    --prompt "Power:" \
    --lines 7 \
    --width 200
)

[ -n "$choice" ] && eval "${actions[$choice]}"
