#!/bin/sh

cat <<EOM >/etc/network/interfaces.d/$1

# The primary network interface
allow-hotplug $1
iface $1 inet dhcp

EOM
