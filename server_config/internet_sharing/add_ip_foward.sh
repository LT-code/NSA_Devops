iptables -A FORWARD -s $2 -o $1 -j ACCEPT
