#!/bin/dash
#
# sets the wallpaper

# IF the diashow is already running THEN exit
running=$(pgrep -c wallpapershow) 
[ $running -gt 1 ] && exit 1

# start the background process
{

  while true
  do
    cd $HOME/.wallpaper
    list=$(ls)

    for x in ${list}
    do
      hsetroot -full "$x"
      sleep 300
    done
  done

} &


exit 0


