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

sudo xbsp-install mpv vlc ffmpeg \
                  youtube_dl gtk-youtube-viewer \
                  chromium firefox-esr icecat \
                  opera otter-browser torbrowser-launcher \
                  transmission-gtk \
                  udevil \
                  bwm-ng iptraf-ng tcpdump arp-scan ifstatus vnstat iperf nmap \
                  dnote-cli \
                  mupdf apvlv vimiv 


sudo ln -s /etc/sv/vnstatd /var/services/


