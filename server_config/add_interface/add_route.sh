interface=$1
network=$2
gateway=$3

echo "      up ip route add $network dev $interface via $gateway" >> /etc/network/interfaces.d/$interface

