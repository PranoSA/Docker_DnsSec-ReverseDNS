FROM ubuntu/bind9 as starter
COPY dns_child_server/append_zones.sh .
RUN chmod +x ./append_zones.sh
RUN ./append_zones.sh

COPY volumes/dns2/db.compressibleflowcalculator.com /etc/bind/db.compressibleflowcalculator.com
COPY dns_child_server/add_dns_options.sh .
RUN chmod +x ./add_dns_options.sh
RUN ./add_dns_options.sh

# Reverse DNS now 
COPY volumes/dns2/db.0.25.172.in-addr.arpa /etc/bind/db.0.25.172.in-addr.arpa

WORKDIR /etc/bind/keys/compressibleflowcalculator.com
RUN dnssec-keygen -a RSASHA256 -b 1024 compressibleflowcalculator.com
RUN dnssec-keygen -a RSASHA256 -b 2048 -f KSK compressibleflowcalculator.com
RUN chown bind -R .
RUN chgrp bind -R .
RUN chmod 777 .
RUN chmod -R 777 .
RUN chown bind -R /etc/bind
RUN chgrp bind -R /etc/bind

#RUN dnssec-keygen -a NSEC3RSASHA1 -b 2048 -n ZONE compressibleflowcalculator.com
# RUN dnssec-keygen -f KSK -a NSEC3RSASHA1 -b 4096 -n ZONE compressibleflowcalculator.com
#dnssec-dsfromkey -a SHA-1 Kexample.com.+008+06817.key
#dnssec-dsfromkey -a SHA-256 Kexample.com.+008+06817.key
#COPY dns_child_server/add_dnskeys.sh /add_dnskeys.sh
#RUN chmod +x /add_dnskeys.sh
#RUN /add_dnskeys.sh
#RUN dnssec-signzone -A -3 $(head -c 1000 /dev/random | sha1sum | cut -b 1-16) -N INCREMENT -o /etc/bind/compressibleflowcalculator.com.zone. -t /etc/bind/db.compressibleflowcalculator.com
#RUN dnssec-signzone -3 $(head -c 1000 /dev/random | sha1sum | cut -b 1-16) -A -N INCREMENT -o compressibleflowcalculator.com -t /etc/bind/db.compressibleflowcalculator.com
