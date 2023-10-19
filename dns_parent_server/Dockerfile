FROM ubuntu/bind9 as starter
RUN cat <<EOF >>/etc/bind/default-zones.conf
zone "com" {
	type "master"
	file "/etc/bind/db.com"
};
EOF
cat <<EOF >>/etc/bind/named-conf.options
dnssec-enable yes;
dnssec-validation yes;
dnssec-lookaside auto;
EOF
RUN dnssec-keygen -a NSEC3RSASHA1 -b 2048 -n ZONE example.com
COPY volumes/dns1/db.com /etc/bind/db.com
