#!/bin/bash

# update
apt-get -y update && apt-get -y upgrade
# install shiz needed
apt-get -y install libnet-ssleay-perl libauthen-pam-perl libio-pty-perl apt-show-versions

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.610_all.deb
#
dpkg --install webmin_1.610_all.deb
#
# go to http://vpsIP:10000/ login with vps login/passwd
# restart webmin
service webmin restart
#EOF