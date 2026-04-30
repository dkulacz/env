#!/usr/bin/env bash

selected="$(printf '%s\n' "Lock" | rofi -dmenu -p "Lock screen" -i -lines 2)"

case "$selected" in
  Lock) i3lock-fancy ;;
esac
