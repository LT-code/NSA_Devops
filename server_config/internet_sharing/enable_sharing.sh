net_interface=$1


## Internet connection shating script
sysctl -w net.ipv4.ip_forward=1
sysctl -p /etc/sysctl.conf
/etc/init.d/procps restart
sed -i '/ip_forward/s/^#//g' /etc/sysctl.conf
iptables -X
iptables -F
iptables -t nat -X
iptables -t nat -F
iptables -P FORWARD DROP

## Internet connection shating script
iptables -t nat -A POSTROUTING -o $net_interface -j MASQUERADE

# internet
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
