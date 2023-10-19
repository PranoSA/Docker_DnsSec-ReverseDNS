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
