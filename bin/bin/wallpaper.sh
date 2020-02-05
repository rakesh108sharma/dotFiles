#!/bin/dash
#
# sets the wallpaper

cd $HOME/.wallpaper

hsetroot -full $(ls | fzy)

cd -

exit 0
