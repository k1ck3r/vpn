#!/bin/bash

# adding user
useradd --system --no-create-home --home-dir=/usr/loca/vpnserver vpn

# changing perms
chown -R vpn:vpn /usr/local/vpnserver

# some security
find /usr/local/vpnserver -type f -exec chmod 600 {} \;
find /usr/local/vpnserver -type d -exec chmod 700 {} \;

# make them executable
chmod +x /usr/local/vpnserver/vpncmd 
chmod +x /usr/local/vpnserver/vpnserver
