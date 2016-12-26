#!/usr/bin/env bash

#this will run the docker-compose script and setup the haproxy with two apache containers.

echo " Setting up the haproxy and two apache webserver containers"
sleep 2 
docker-compose up -d --build  
sleep 1
echo "Infor about the containers and Ip addresses "
docker inspect -f '{{.Name}} - {{.NetworkSettings.IPAddress }}' $(docker ps -aq)
