#!/bin/bash

# update
apt-get -y update && apt-get -y upgrade
# install shiz needed

apt-get -y install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python
#
apt-get -f install
#
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.610_all.deb
#
dpkg --install webmin_1.610_all.deb
#
apt-get -f install
# go to http://vpsIP:10000/ login with vps login/passwd
# restart webmin
service webmin restart
#EOF