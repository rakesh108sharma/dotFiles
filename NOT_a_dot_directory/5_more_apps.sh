#!/usr/bin/env bash
#
#
set -eu
set -o pipefail

cd $HOME
clear
sudo xbps-install -Su
sudo xbps-install void-repo-unfree
sudo xbps-install -Su

sudo xbsp-install ddgr googler taizen \
                  tealdear zeal \
                  ffsreencast 
