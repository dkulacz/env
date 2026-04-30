#!/usr/bin/env bash

selected="$(printf '%s\n' "Laptop" "Dock:Home" "Dock:Work" "Temperature:Day" "Temperature:Night" | rofi -dmenu -p "Monitor setup" -i -lines 2)"

case "$selected" in
  Laptop) autorandr --load laptop ;;
  Dock:Home) autorandr --load home ;;
  Dock:Work) autorandr --load office ;;
  Temperature:Day) sct 6500 ;;
  Temperature:Night) sct 4000 ;;
esac
