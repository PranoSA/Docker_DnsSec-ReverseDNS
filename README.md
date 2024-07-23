.com Nameserver -> 172.25.0.2

compressibleflowcalculator.com Nameserver -> 172.25.0.3

25.172.in-addr.arpa Nameserver -> 172.25.0.2

0.25.172.in-addr.arpa Nameserver -> 172.25.0.5

DNS Experimental Client -> 172.25.0.10

# Create Network To Reside

docker run -it --network my_network sequenceiq/alpine-dig /bin/sh

# Basic Docker Setup

### docker network create --driver bridge dns_network --subnet=172.25.0.0/16

### docker run -d --network dns_network --ip 172.25.0.2 --name dns_parent_server pcadler/dns_parent_server

### docker run -d --network dns_network --ip 172.25.0.3 --name dns_child_server pcadler/dns_child_server

### docker run -it -d --network dns_network --ip 172.25.0.5 --name dns_client sequenceiq/alpine-dig /bin/sh

### docker exec -it dns_client /bin/sh

# Basic Queries to Run

## Reverse DNS

### dig @172.25.0.2 -x 172.25.0.2

dig @172.25.0.2 -x 172.25.0.7

## DNS-SEC

### dig @172.25.0.2 www.compressibleflowcalculator.com +dnssec
