#!/bin/sh
#get firefox
wget https://ftp.mozilla.org/pub/firefox/releases/38.0b1/linux-i686/en-US/firefox-38.0b1.tar.bz2
#get flash player
wget http://fpdownload.macromedia.com/get/flashplayer/pdc/24.0.0.186/flash_player_npapi_linux.i386.tar.gz
mkdir -p /root/Downloads/flashplayer
tar -zxvf flash_player_npapi_linux.i386.tar.gz -C /root/Downloads/flashplayer
tar -xjvf firefox-38.0b1.tar.bz2 -C /root/Downloads/
mkdir -p /root/Downloads/firefox/browser/plugins/
cp /root/Downloads/flashplayer/libflashplayer.so /root/Downloads/firefox/browser/plugins/libflashplayer.so
mv /root/Downloads/firefox/ /usr/local/lib/
ln -s /usr/local/lib/firefox/firefox /usr/bin/firefox

