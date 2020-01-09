#!/usr/bin/env bash
#
#
set -eu
set -o pipefail

cd $HOME
clear
sudo xbps-install -Su
sudo xbps-install void-repo-nonfree
sudo xbps-install -Su

sudo xbps-install -y ddgr googler taizen \
                  tealdeer zeal \
                  ffscreencast 

clear
cat << EOF


          INSTALL   COMPLETE!



EOF

echo

