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
                  chromium firefox-esr icecat opera otter-browser torbrowser-launcher \
                  transmission \
                  udevil \
                  bwm-ng iptraf-ng tcpdump arp-scan ifstatus vnstat iperf nmap \
                  dnote-cli buku \
                  apvlv vimiv \
                  entr 


sudo ln -s /etc/sv/vnstatd /var/service/

clear
cat << EOF


     Finished installing apps.

     continue with step 5


EOF


