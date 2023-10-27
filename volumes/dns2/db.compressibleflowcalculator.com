@       IN      SOA     compressibleflowcalculator.com   ns1.compressibleflowcalculator.com. (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;


@           IN      NS    ns1.compressibleflowcalculator.com.
ns1         IN      A      172.25.0.3



ldap        IN      A       192.168.25.7
www         IN      A      192.168.25.10 

k5          IN      A      192.168.25.11
home        IN      CNAME       ldap.compressibleflowcalculator.com.



