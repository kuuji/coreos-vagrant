#!/bin/bash
sed -i.bak "s/trooper/$TROOPER/g" /srv/http/index.html

lighttpd -D -f /etc/lighttpd/lighttpd.conf
