#!/usr/bin/bash

swaylock \
  -i "$HOME/Pictures/backgrounds/parrot-wallpapers/backgrounds/lorikeet.jpg" \
  --clock \
  --indicator \
  --indicator-radius 120 \
  --indicator-thickness 10 \
  \
  --ring-color 003E48 \
  --key-hl-color FFFFFF \
  --inside-color 281214B3 \
  --inside-clear-color 281214B3 \
  --inside-ver-color 3465A4 \
  --inside-wrong-color FF000E \
  \
  --ring-ver-color 3465A4 \
  --ring-wrong-color FFFFFF \
  \
  --text-color FFFFFF \
  --text-ver-color BABDB6 \
  --text-wrong-color FF000E \
  \
  --line-color 00000000 \
  \
  --timestr "%I:%M:%S %p" \
  --datestr "%a, %d %b(%m) %Y"
