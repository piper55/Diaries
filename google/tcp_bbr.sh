#if you kernal version is higher than 4.9 
#do the command : lsmod | grep bbr  
#if the result have not "tcp_bbr" then do: 
# modprobe tcp_bbr (mean that: loading modules of bbr) 
# echo "tcp_bbr" >> /etc/modules-load.d/modules.conf
# echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
# echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
# sysctl -p
# test 
# sysctl net.ipv4.tcp_available_congestion_control
# sysctl net.ipv4.tcp_congestion_control
# if results of both have "bbr" , it well done;
# also you can do : lsmod | grep bbr , if you can see tcp_bbr in the result , it's running!