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

sudo xbps-install -y mpv vlc ffmpeg \
                  youtube-dl gtk-youtube-viewer \
                  chromium firefox-esr icecat \
                  opera otter-browser torbrowser-launcher \
                  transmission-gtk \
                  udevil \
                  bwm-ng iptraf-ng tcpdump arp-scan ifstatus vnstat iperf nmap \
                  dnote-cli \
                  mupdf apvlv vimiv 


sudo ln -s /etc/sv/vnstatd /var/service/


