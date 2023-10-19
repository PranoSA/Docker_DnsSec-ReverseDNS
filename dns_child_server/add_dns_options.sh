#!/bin/bash

cat <<EOF >>/etc/bind/named-conf.options
dnssec-enable yes;
dnssec-validation yes;
dnssec-lookaside auto;
EOF
