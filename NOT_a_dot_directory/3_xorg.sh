#!/usr/bin/env bash
#
#
set -eu
set -o pipefail

cd $HOME
clear
sudo xbps-install -Su

sudo xbps-install xorg \
                  xterm \
                  lxterminal lxrandr \
                  compton dunst feh \
                  adwaita-icon-theme \
                  font-hack-ttf google-fonts \
                  alsa-utils volumeicon

cd .dotfiles
stow xinit bash bin compton vim nano fish volumeicon

startx
