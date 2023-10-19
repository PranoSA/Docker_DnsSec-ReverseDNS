@       IN      SOA     com.   root.com. (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;


.com                IN              NS  root.com 
root.com            IN              A   192.168.25.2 

compressibleflowcalculator.com       IN      NS      ns1.compressibleflowcalculator.com 
ns1.compressibleflowcalculator.com       IN     NS      192.168.25.3 

