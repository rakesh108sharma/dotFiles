setxkbmap de

xset dpms 180

amixer set PCM 100%,100%   # max boost
amixer set Front 100%,80%  # laptop right speaker is broken - this helps
 
compton &
volumeicon &
clipit &

{ sleep 3 && lxterminal -e bash & } 

while xsetroot -name "$(date +%a" "%d/%m/%g"   "%H:%M" ")"
    do 
        sleep 60 
    done &



exec dwm
