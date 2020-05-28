#!/usr/bin/env bash
#
#
set -eu
set -o pipefail

cd $HOME
clear
sudo xbps-install -Su

sudo xbps-install -y xorg \
                  xterm \
                  lxterminal lxrandr \
                  picom dunst feh \
                  adwaita-icon-theme \
                  font-hack-ttf google-fonts-ttf \
                  alsa-utils volumeicon

cd .dotfiles
stow xinit bash bin compton vim nano fish volumeicon

startx
