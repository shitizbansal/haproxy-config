This page explains the design of the HAproxy loadbalancer configuration and the apache containers running as containers. The HAproxy and the apache servers are running in the same network

. Assuming the docker network to be 172.17.0.2/16 . The apache server will be taking the subsequent IPs. 


How to run the scripts ?

- First run the docker-init.sh in the exzeo folder. 
- Note down the ip addresses of the apache servers.
- Execute the command 'docker exec -it <container id of the haproxy lb> /bin/bash'
- Then run the haproxy script inside the haproxy container.

What has not been done ?
- DNS resolution.  Reason being i need some more time.
- Reverse Proxy .  I haven't implemented it earlier and need to study on this but can be achievable. 

