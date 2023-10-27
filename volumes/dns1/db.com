@       IN      SOA     com   root.com (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;


@                   IN        NS      root.com 
root                IN        A       172.25.0.2


compressibleflowcalculator.com       IN      NS      ns1.compressibleflowcalculator.com
ns1.compressibleflowcalculator.com       IN     NS      172.25.0.3