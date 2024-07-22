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

compressibleflowcalculator.com. IN DS 50762 8 2 555A450D6A9A3E6B73DFBC4029F371CEDB8549D5CEACC71ED36C358484627F48



