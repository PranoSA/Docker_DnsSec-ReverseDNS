FROM ubuntu/bind9 as starter
COPY dns_parent_server/append_zones.sh .
RUN chmod +x ./append_zones.sh
RUN ./append_zones.sh
COPY volumes/dns1/db.com /etc/bind/db.com
COPY dns_parent_server/add_dns_options.sh .
RUN chmod +x ./add_dns_options.sh
#RUN ./add_dns_options.sh
RUN chmod 777 .
RUN chown bind -R /etc/bind
RUN chgrp bind -R /etc/bind