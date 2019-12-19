# .profile

export PATH=$HOME/bin:$PATH
export MANPAGER=most
export PAGER=most
export EDITOR=nano
export BROWSER=chromium
export HISTSIZE=1000
export HISTFILESIZE=1000
export TERM=xterm

 #run devmon daemon to automount usb-sticks to /media
 
# unmount with "udevil umount /dev/sdX"
#devmon &


# starts the X system on login
# login happens automatic too
#       added "-a void" for "GETTY_ARGS" in /etc/sv/agetty-tty1/c$
# might be overwritten by an system update
startx

