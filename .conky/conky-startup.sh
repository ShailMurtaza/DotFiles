#!/usr/bin/bash
killall conky
conky -c $HOME/.conky/clock/clock.lua
exit 0
