#!/bin/sh

cat <<EOM >/etc/network/interfaces.d/$1

# The primary network interface
allow-hotplug $1
iface $1 inet static
      address $2
      netmask $3
      gateway $4
EOM

