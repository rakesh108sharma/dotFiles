#!/bin/sh

choice=$(echo -e "csh\nbash\nfish\nxinitrc\nrc\nvim\nbspwm\nsxhkd\nTHIS-menu" | dmenu -l 10)

case $choice in
	csh)
		xterm -e vim ~/.cshrc
		;;
	bash)
		st -e vim ~/.bashrc
		;;
	fish)
		st -e vim ~/.config/fish/config.fish
			;;
	xinitrc)
		st -e vim ~/.xinitrc
		;;
	rc)
		sudo st -e vim /etc/rc.conf
		;;
	vim)
		st -e vim ~/.vimrc
		;;
	bspwm)
		st -e vim ~/.config/bspwm/bspwmrc
		;;
	sxhkd)
		st -e vim ~/.config/sxhkd/sxhkdrc
		;;
	THIS-menu)
		st -e vim ~/bin/config-menu.sh
esac
