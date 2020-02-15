#!/bin/dash
#
# sets the wallpaper
# first check and stop wallpapershow
pgrep wallpapershow >/dev/null 2>&1 && pkill wallpapershow


cd "$HOME"/.wallpaper >/dev/null || exit

hsetroot -full "$(fd | dmenu -l 40)"  

cd - >/dev/null || exit

exit 0
