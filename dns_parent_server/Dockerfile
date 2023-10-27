FROM ubuntu/bind9 as starter
COPY dns_parent_server/append_zones.sh .
RUN chmod +x ./append_zones.sh
RUN ./append_zones.sh
COPY volumes/dns1/db.com /etc/bind/db.com
