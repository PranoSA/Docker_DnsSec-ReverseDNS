@       IN      SOA     com   ns1.com (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;


@                   IN        NS      ns1.com.
ns1               IN        A       172.25.0.2

marley              IN        A       172.25.0.11

compressibleflowcalculator.com.       IN      NS      ns1.compressibleflowcalculator.com.
ns1.compressibleflowcalculator.com.       IN     A      172.25.0.3
