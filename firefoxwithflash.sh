#!/bin/sh
#get firefox
wget http://ftp.mozilla.org/pub/firefox/releases/45.6.0esr/linux-i686/en-US/firefox-45.6.0esr.tar.bz2
#get flash player
wget http://fpdownload.macromedia.com/get/flashplayer/pdc/24.0.0.186/flash_player_npapi_linux.i386.tar.gz
mkdir /root/Downloads/flashplayer
tar -zxvf flash_player_npapi_linux.i386.tar.gz -C /root/Downloads/flashplayer
tar -xjvf firefox-45.6.0esr.tar.bz2 -C /root/Downloads/
cp /root/Downloads/flashplayer/libflashplayer.so /root/Downloads/firefox/plugins/libflashplayer.so
mv /root/Downloads/firefox/ /usr/local/lib/
ln -s /usr/local/lib/firefox/firefox /usr/bin/firefox
