#!bin/sh

CHOSEN=$(printf "About this Device...\nSleep\nRestart...\nShut Down..." | rofi -dmenu -i -theme-str '@import "~/.config/rofi/power-config/power-config.rasi"' -p "Arch")

case "$CHOSEN" in 
    "About this Device...") alacritty --hold -e neofetch ;;
    "Sleep") slock 1 ;;
    "Restart...") reboot ;;
    "Shut Down...") poweroff ;;
    *) exit 1 ;;
esac