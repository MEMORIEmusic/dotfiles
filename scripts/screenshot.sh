#!/bin/bash
#
#
#   _____                              _           _   
#  / ____|                            | |         | |  
# | (___   ___ _ __ ___  ___ _ __  ___| |__   ___ | |_ 
#  \___ \ / __| '__/ _ \/ _ \ '_ \/ __| '_ \ / _ \| __|
#  ____) | (__| | |  __/  __/ | | \__ \ | | | (_) | |_ 
# |_____/ \___|_|  \___|\___|_| |_|___/_| |_|\___/ \__|
#                                                      
# -----------------------------------------------------
# By MEMORIE
# -----------------------------------------------------                                                    

DIR="$HOME/Pictures/screenshots/"
NAME="Screenshot_at_$(date +%d%m%Y_%H%M%s).png"

# option1="Selected window (delay 3 sec)"
option2="Selected area"
option3="Fullscreen(delay 3 sec)"

options="$option2\n$option3"

choice=$(echo -e "$options" | rofi -dmenu -i -no-show-icons -l 4 -width 30 -p "Take a screenshot")

case $choice in
    $option1)
        scrot $DIR$NAME -d 3 -e 'xclip -selection clipboard -t image/png -i $f' -c -z -u ;;

    $option2)
        grim -g "$(slurp)" $(xdg-user-dir PICTURES)/screenshots/$(date +'%s_grim.png') ;;

    $option3)
         sleep 3
        grim $(xdg-user-dir PICTURES)/screenshots/$(date +'%s_grim.png') ;;

esac