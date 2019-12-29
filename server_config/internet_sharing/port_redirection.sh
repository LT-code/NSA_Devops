net_interface=$1
port=$2
ipdest=$3

iptables -t nat -A PREROUTING -i $net_interface -p tcp --dport $port -j DNAT --to-destination $ipdest:$port
iptables -A FORWARD -i $net_interface -d $ipdest -p tcp --dport $port -j ACCEPT
