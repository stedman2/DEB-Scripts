#!bin/bash

apt-get -y update && apt-get -y upgrade

apt-get -y install openvpn nano

mkdir openvpn
cd openvpn
wget http://repo.regolithmedia.co.id/ovpn_regolithmedia.zip
unzip ovpn_regolithmedia.zip
chmod +x ovpn.sh
./ovpn.sh

# enter info - remember 

# start cmd below but it will autostart
# openvpn /etc/openvpn/1194-udp.conf &


#  not sure if will work after reboot but all good atm
echo 1 > /proc/sys/net/ipv4/ip_forward 

iptables -t nat -I POSTROUTING -o eth0 -j SNAT --to 63.223.101.174

bg

# - - - --  -
#  windows go install openvpn from their site
#  get winspc and go to root and get config.zip 
#  extract files and put both into C Program Files x86 Openvpn config

iptables -t nat -A POSTROUTING -s 10.2.3.0/24 -j SNAT --to 63.223.101.174
