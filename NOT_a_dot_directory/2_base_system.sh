#!/usr/bin/env bash
#
#
set -eu
set -o pipefail

clear

cd $HOME
sudo xbps-install -Su
sudo xbps-install -Su
clear
sudo xbps-install -y bash bash-completion hstr fselect shellcheck starship \
                  nano vim \
                  htop most \
                  w3m w3m-img \
                  fff lf ueberzug trash-cli highlight mediainfo \
                  libX11-devel libXft-devel libXinerama-devel \
                  git stow \
                  fd ripgrep \
                  openssh scron \
                  socklog socklog-void \
                  base-devel binutils coreutils usbutils iputils

clear
mkdir .suckless
cd .suckless
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/st

cd dwm && sudo make clean install
cd ..
cd st && sudo make clean install
cd ..
cd dmenu && sudo make clean install
cd $HOME

clear
echo
echo
cat << EOF

          finished installing the base system.





          CHECK dwm st dmenu


          maybe change & reinstall 


EOF

