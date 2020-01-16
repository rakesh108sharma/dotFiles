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
sudo xbps-install -y bash bash-completion shellcheck fish-shell \
                  nano vim \
                  htop most \
                  w3m w3m-img \
                  ranger fff lf ueberzug trash-cli highlight mediainfo \
                  libX11-devel libXft-devel libXinerama-devel \
                  git stow \
                  base-devel binutils coreutils usbutils 

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

