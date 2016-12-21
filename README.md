# Problem

Develop a load balancing capabilities of webservices using HAProxy

## Prerequisite

- Knowledge of HAProxy and how to write its configuration
- Understanding of load balancing concepts
- Understanding of Docker, Docker Compose and ability to write docker scripts

## Problem Statement

Assume there are 2 services namely S1 and S2. Two instances of each of this services are currently running in its own Docker containers within the same network. Given this situation you're expected to implement &ndash;
- A round robin based load balancing using HAProxy between S1 and S2
- Also define a reverse proxy for S1 and S2 such that &ndash;
 - S1 is available in http://test.com/s1
 - S2 is available in http://s2.test.com

## Deliverables

Fork this repo and solve the problem statement and send us a PR with following &ndash;
- HAProxy configuration script (documentation will earn you extra points)
- `docker-compose.yml` so that we test the setup locally.
- `Dockerfile` for containerization of the services

## Tips

- Run any service such as apache http server, ngnix to demonstrate S1 and S2. If you've python installed, try running `python -m SimpleHTTPServer [PORT_NUMBER]` in the shell, it should run a simple webserver that will serve files in that folder.
