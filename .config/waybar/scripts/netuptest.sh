#!/usr/bin/sh

if nc -zu -w 2 8.8.8.8 53 >/dev/null 2>&1; then
    printf '{"text":"󰖩","tooltip":"Online","class":"up"}\n'
else
    printf '{"text":"󰖪","tooltip":"Offline","class":"down"}\n'
fi
exit
# Exit

if ping -c1 -W1 1.1.1.1 >/dev/null 2>&1; then
    printf '{"text":"󰖩","tooltip":"Online","class":"up"}\n'
else
    printf '{"text":"󰖪","tooltip":"Offline","class":"down"}\n'
fi

