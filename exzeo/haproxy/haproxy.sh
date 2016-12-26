#!/usr/bin/env bash

#Installing the packages for the haproxy 

echo "Installing haproxy package on the OS"
sleep 2
apt-get update 
apt-get install -y haproxy 

echo "checking the haproxy is enabled in the /etc/default"
sleep 2
if grep -q '^ENABLED' /etc/default/haproxy
then
	echo "ENABLED is present"
	sed -i 's/^ENABLED=0/ENABLED=1/' /etc/default/haproxy
else
	echo "ENABLED is not found"
	echo "ENABLED=1" >> /etc/default/haproxy
echo "Changes Done"
sleep 2
cat /etc/default/haproxy
fi 
echo " enter the ip address of the first webserver : " 
read first_ip 
echo "enter the port number of first webserver: "
read port_num1 
echo " enter the ip address of the second webserver : " 
read second_ip
echo " enter the port number of the second webserver" 
read port_num2
echo " global
	log /dev/log   local0
        log 127.0.0.1   local1 notice
        maxconn 4096
        user haproxy
        group haproxy
        daemon

defaults
	log     global
        mode    http
        option  httplog
        option  dontlognull
        mode    http
        retries 3
        option redispatch
        maxconn 2000
        contimeout      5000
        clitimeout      50000
        srvtimeout      50000

frontend balancer
  bind 0.0.0.0:80
  mode http
  default_backend web_backends

backend web_backends
	mode http
  	option forwardfor
        balance roundrobin
        server   s1 $first_ip:$port_num1 check  
        server   s2 $second_ip:$port_num2 check" > "/etc/haproxy/haproxy.cfg"


service haproxy start





