#!/bin/sh
#
#
set -eu
set -o pipefail

clear
cd $HOME
mkdir bin documents downloads video .config .dotfiles 
sudo xbps-install -Su
sudo xbps-install -Su
sudo xbps-install bash bash-completion \
                  sudo vim nano \
                  git stow

clear
cd .dotfiles
git clone https://github.com/rakesh108sharma/dotfiles
cd ..
clear

cat << EOF
"DO:   visudo"

"DO:   apply .dotfiles as needed"


"DO:         R E B O O T !!!"
EOF
