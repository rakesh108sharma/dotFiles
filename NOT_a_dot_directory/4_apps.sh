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

sudo xbsp-install mpv vlc \
                  youtube_dl gtk-youtube-viewer \
                  chromium firefox-esr icecat \
                  opera otter-browser torbrowser-launcher \
                  transmission-gtk \
                  udevil \
                  bwm-ng iptraf-ng tcpdump tcptrack ifstatus vnstat


sudo ln -s /etc/sv/vnstatd /var/services/


