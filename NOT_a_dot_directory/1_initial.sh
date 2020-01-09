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
git clone https://github.com/rakesh108sharma/dotfiles


clear
echo
echo
cat << EOF
"DO:   visudo"

"CHECK: delete all bash-config files before using stow on .dotfiles"
"DO:   apply .dotfiles as needed"


"DO:         R E B O O T !!!"
EOF
