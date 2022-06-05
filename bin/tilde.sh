#!/bin/sh

setxkbmap -layout us -variant mac

if ! xmodmap -pk | grep -P  '[\s]+94' | grep asciitilde; then
  xmodmap -e "keycode 94 = grave asciitilde"
else
  echo "a"
  #xmodmap -e "keycode 94 = grave asciitilde"
fi



