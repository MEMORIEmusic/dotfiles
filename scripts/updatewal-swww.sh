#!bin/bash
#   _    _           _       _    __          __   _
#  | |  | |         | |     | |   \ \        / /  | |
#  | |  | |_ __   __| | __ _| |_ __\ \  /\  / /_ _| |
#  | |  | | '_ \ / _` |/ _` | __/ _ \ \/  \/ / _` | |
#  | |__| | |_) | (_| | (_| | ||  __/\  /\  / (_| | |
#   \____/| .__/ \__,_|\__,_|\__\___| \/  \/ \__,_|_|
#         | |
#         |_|                                        
#
#  -------------------------------------------------
#  By MEMORIE
#  -------------------------------------------------

# Find and select a random wallpaper
wall=$(find $HOME/Documents/wallpaper/ -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)


# Apply the wallpaper as the background
swww img $wall

# Generate a color scheme from the newly selected background
wal -c
wal -i $wall
wal -R

echo "Done :)"

