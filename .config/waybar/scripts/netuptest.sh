#!/usr/bin/sh
if ping -c 1 -W 1 1.1.1.1 >/dev/null 2>&1 || ping -6 -c 1 -W 1 2606:4700:4700::1111 >/dev/null 2>&1; then
    printf '{"text":"󰖩","tooltip":"Online","class":"up"}\n'
else
    printf '{"text":"󰖪","tooltip":"Offline","class":"down"}\n'
fi
