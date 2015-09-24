#!/bin/sh
cp /usr/local/etc/haproxy/haproxy.cfg.template /usr/local/etc/haproxy/haproxy.cfg
sed -i -e 's/BACKEND_PORT1/$BACKEND_PORT1/g' /usr/local/etc/haproxy/haproxy.cfg
sed -i -e 's/BACKEND_PORT2/$BACKEND_PORT2/g' /usr/local/etc/haproxy/haproxy.cfg
sed -i -e 's/BACKEND1/$BACKEND1/g' /usr/local/etc/haproxy/haproxy.cfg
sed -i -e 's/BACKEND2/$BACKEND2/g' /usr/local/etc/haproxy/haproxy.cfg
sed -i -e 's/RELAY_PORT/$RELAY_PORT/g' /usr/local/etc/haproxy/haproxy.cfg

cat /usr/local/etc/haproxy/haproxy.cfg
