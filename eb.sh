#!/bin/sh
apt-get update
apt-get -q -y --force-yes install xorg lxde-core tightvncserver xterm jwm mercurial libasound2-dev libcurl4-openssl-dev libnotify-dev libxt-dev libiw-dev mesa-common-dev autoconf2.13 yasm libidl-dev screen unzip bzip2 nano
dpkg-reconfigure locales
apt-get install ttf-arphic-ukai ttf-arphic-uming ttf-arphic-gbsn00lp ttf-arphic-bkai00mp ttf-arphic-bsmi00lp
#get firefox
wget http://ftp.mozilla.org/pub/firefox/releases/32.0/linux-i686/en-US/firefox-32.0.tar.bz2
#get flash player
wget http://fpdownload.macromedia.com/get/flashplayer/pdc/24.0.0.186/flash_player_npapi_linux.i386.tar.gz
mkdir -p /root/Downloads/flashplayer
tar -zxvf flash_player_npapi_linux.i386.tar.gz -C /root/Downloads/flashplayer
tar -xjvf firefox-32.0.tar.bz2 -C /root/Downloads/
mkdir -p /root/Downloads/firefox/browser/plugins/
cp /root/Downloads/flashplayer/libflashplayer.so /root/Downloads/firefox/browser/plugins/libflashplayer.so
mv /root/Downloads/firefox/ /usr/local/lib/
ln -s /usr/local/lib/firefox/firefox /usr/bin/firefox


wget http://atomstar.eu.org/eb/vncxstartup.txt http://atomstar.eu.org/eb/vncserverinit.txt

vncserver
rm -f ~/.vnc/xstartup
mv vncxstartup.txt ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
mv vncserverinit.txt /etc/init.d/vncserver
chmod +x /etc/init.d/vncserver
update-rc.d vncserver defaults
