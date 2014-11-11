#!/bin/bash

sudo su
apt-get update -y
apt-get install -y zd1211-firmware hostapd isc-dhcp-server bridge-utils

cp -f /etc/network/interfaces /etc/network/interfaces.bak
cp -f interfaces /etc/network/
ifconfig wlan0 192.168.0.1

cat dhcpd.conf >> /etc/dhcp/dhcpd.conf

service isc-dhcp-server start

