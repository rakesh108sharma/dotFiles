setxkbmap de
compton &
volumeicon &

while xsetroot -name "$(date +%a" "%d/%m/%g"   "%H:%M" ")"
    do 
        sleep 60 
    done &


exec dwm
