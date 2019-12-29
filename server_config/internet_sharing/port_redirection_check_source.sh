net_interface=$1
port=$2
ipdest=$3
ipsourece=$4

iptables -t nat -A PREROUTING -s $ipsourece -i $net_interface -p tcp --dport $port -j DNAT --to-destination $ipdest:$port
iptables -A FORWARD -i $net_interface -d $ipdest -p tcp --dport $port -s $ipsourece -j ACCEPT
