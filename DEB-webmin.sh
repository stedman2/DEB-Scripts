#!/bin/bash

# update
apt-get -y update && apt-get -y upgrade
# install
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.610_all.deb
#
dpkg --install webmin_1.610_all.deb
#
# go to http://vpsIP:10000/ login with vps login/passwd
# restart webmin
service webmin restart
#EOF