#!/bin/bash

cat <<EOF >>/etc/bind/named.conf.default-zones
zone "compressibleflowcalculator.com" {
	type master;
	file "/etc/bind/db.compressibleflowcalculator.com";
    key-directory "/etc/bind/keys/compressibleflowcalculator.com";
    inline-signing yes;
    auto-dnssec maintain;
};
EOF

# Now, /etc/bind/db.0.25.172.in-addr.arpa you want to use for reverse DNS lookups.
cat <<EOF >>/etc/bind/named.conf.default-zones
zone "0.25.172.in-addr.arpa" {
    type master;
    file "/etc/bind/db.0.25.172.in-addr.arpa";
};
EOF
