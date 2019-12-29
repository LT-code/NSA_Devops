sh ../add_interface/add_static_interface.sh enp0s3 192.168.20.2 255.255.255.252 192.168.20.1
sh ../add_interface/add_static_interface_no_gw.sh enp0s8 192.168.2.1 255.255.255.248

sh ../internet_sharing/enable_sharing.sh enp0s3
sh ../internet_sharing/add_ip_foward.sh enp0s3 192.168.2.2
sh ../internet_sharing/add_ip_foward.sh enp0s3 192.168.2.3
sh ../internet_sharing/add_ip_foward.sh enp0s3 192.168.2.4
#sh ../internet_sharing/add_ip_foward.sh enp0s8 192.168.20.1
sh ../internet_sharing/add_ip_foward.sh enp0s8 192.168.10.2

iptables-save > /etc/iptables/rules.v4
