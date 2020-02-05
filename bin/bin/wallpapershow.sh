#!/bin/dash
#
# sets the wallpaper

# IF the diashow is already running THEN exit
running="$(pgrep -c wallpapershow)" 
[ "$running" -gt 1 ] && echo "Wallpaper diashow already running..." && exit 1

# start the background process
{

  while :
  do
    cd "$HOME"/.wallpaper >/dev/null || exit
    list="$(ls)"

    for x in ${list}
    do
      hsetroot -full "$x"
      sleep 300
    done
  done

} &


exit 0


