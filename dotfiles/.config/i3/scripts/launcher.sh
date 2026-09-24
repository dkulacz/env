#!/usr/bin/env bash

selected="$(printf '%s\n' "Run:Cmd" "Run:App" "Calendar" "Calculator" "Screen:Lock" "Screenshot:Selection" "Screenshot:Screen" "Layout:Laptop" "Layout:Dock:Home" "Layout:Dock:Work" "Temperature:Day" "Temperature:Night" "CPU:Scaling:Performance" "CPU:Scaling:Powersave" | rofi -dmenu -p "Select action:" -i -lines 2)"

case "$selected" in
  Run:Cmd) rofi -modi run -show run;;
  Run:App) rofi -modi drun,run -show drun;;
  Calendar) zenity --calendar;;
  Calculator) kcalc;;
  Screen:Lock) i3lock-fancy ;;
  Screenshot:Selection) eog "$(scrot -s -e 'echo $f')" ;;
  Screenshot:Screen)    eog "$(scrot -e 'echo $f')" ;;
  Layout:Laptop) autorandr --load laptop ;;
  Layout:Dock:Home) autorandr --load home ;;
  Layout:Dock:Work) autorandr --load office ;;
  Temperature:Day) sct 6500 ;;
  Temperature:Night) sct 4000 ;;
  CPU:Scaling:Performance) sudo cpupower frequency-set -g performance ;;
  CPU:Scaling:Powersave) sudo cpupower frequency-set -g powersave ;;
esac
