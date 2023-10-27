#!/bin/bash

cat <<EOF >>/etc/bind/named.conf.default-zones
zone "com" {
	type master;
	file "/etc/bind/db.com";
};
EOF
