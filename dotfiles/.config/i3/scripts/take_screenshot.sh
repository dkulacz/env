#!/usr/bin/env bash

selected="$(printf '%s\n' "Selection" "Screen" | rofi -dmenu -p "Take screenshot" -i -lines 2)"

case "$selected" in
  Selection) eog "$(scrot -s -e 'echo $f')" ;;
  Screen)    eog "$(scrot -e 'echo $f')" ;;
esac
