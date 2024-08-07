#!/bin/bash

cat <<EOF >>/etc/bind/named.conf.default-zones
zone "com" {
	type master;
	file "/etc/bind/db.com";
};
EOF

cat <<EOF >>/etc/bind/named.conf.default-zones
zone "25.172.in-addr.arpa" {
	type master;
	file "/etc/bind/db.25.172.in-addr.arpa";
};
EOF
