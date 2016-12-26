This page explains the design of the HAproxy loadbalancer configuration and the apache containers running as containers. The HAproxy and the apache servers are running in the same network

. Assuming the docker network to be 172.17.0.2/16 . The apache server will be taking the subsequent IPs. 


How to run the scripts ?

- First run the docker-init.sh 
- Then run the haproxy script inside the haproxy container.
