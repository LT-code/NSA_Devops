sh ../add_interface/add_dchp_interface.sh enp0s3
sh ../add_interface/add_static_interface_no_gw.sh enp0s10 192.168.10.1 255.255.255.252
sh ../add_interface/add_static_interface_no_gw.sh enp0s9 192.168.20.1 255.255.255.252
sh ../add_interface/add_static_interface_no_gw.sh enp0s8 192.168.30.1 255.255.255.252

sh ../add_interface/add_route.sh enp0s9 "192.168.2.0/29" 192.168.20.2

sh ../internet_sharing/enable_sharing.sh enp0s3
sh ../internet_sharing/add_ip_foward.sh enp0s3 192.168.10.2
sh ../internet_sharing/add_ip_foward.sh enp0s3 192.168.20.2

sh ../internet_sharing/port_redirection.sh enp0s3 80 192.168.10.2

iptables -P FORWARD ACCEPT
iptables-save > /etc/iptables/rules.v4
