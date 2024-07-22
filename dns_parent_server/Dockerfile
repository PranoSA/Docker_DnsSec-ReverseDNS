FROM ubuntu/bind9 as starter
COPY dns_parent_server/append_zones.sh .
RUN chmod +x ./append_zones.sh
RUN ./append_zones.sh

#Copy the reverse zone file
COPY volumes/dns1/db.25.172.in-addr.arpa /etc/bind/db.25.172.in-addr.arpa

RUN chown bind -R /etc/bind
RUN chgrp bind -R /etc/bind
WORKDIR /etc/bind
RUN chown bind -R .
RUN chgrp bind -R .
COPY volumes/dns1/db.com /etc/bind/db.com
#COPY volumes/dns1/db.compressibleflowcalculator.com /etc/bind/db.compressibleflowcalculator.com
