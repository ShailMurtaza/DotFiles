#!/usr/bin/bash

lock=" Lock"
logout=" Logout"
poweroff=" Poweroff / Shutdown"
reboot=" Reboot / Restart"
suspend=" Suspend / Sleep"

menu="[CANCEL]\n$poweroff\n$lock\n$logout\n$reboot\n$suspend"

choice="$(echo -e $menu | dmenu \
    -nb "${COLOR_BACKGROUND:-#151515}" \
    -nf "${COLOR_DEFAULT:-#aaaaaa}" \
    -sf "${COLOR_HIGHLIGHT:-#589cc5}" \
    -sb "#1a1a1a" \
    -i -p \
    "Power:" -l 6
)"
# echo $choice

case $choice in
        $poweroff) exec systemctl poweroff;;
        $reboot) exec systemctl reboot;;
        $logout) i3-msg exit;;# kill -HUP $XDG_SESSION_PID;;
	$suspend)
		~/.local/bin/lock.sh
		sleep 0.4
		systemctl suspend
		;;
        $lock) exec lock.sh;;
       
esac
