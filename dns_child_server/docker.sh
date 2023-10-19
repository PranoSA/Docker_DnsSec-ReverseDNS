docker network create --driver bridge my_network --subnet=172.25.0.0/16

sudo docker run -d --network my_network --ip 172.25.0.2 --name dns1 ubuntu/bind9

sudo docker run -d --network my_network --ip 172.25.0.3 --name dns2 ubuntu/bind9

sudo docker run -d --network my_network --ip 172.25.0.5 --name dns_client alpine:latest
