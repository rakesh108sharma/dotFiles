setxkbmap de

amixer set PCM 100%,100%   # max boost
amixer set Front 100%,80%  # laptop right speaker is broken - this helps
 
compton &
volumeicon &

while xsetroot -name "$(date +%a" "%d/%m/%g"   "%H:%M" ")"
    do 
        sleep 60 
    done &

lxterminal -e fish &

exec dwm
