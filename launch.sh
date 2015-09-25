#!/bin/sh

#resolv vars in template file to haproxy config file
cp /usr/local/etc/haproxy/haproxy.cfg.template /usr/local/etc/haproxy/haproxy.cfg
sed -i -e 's/BACKEND_PORT1/$BACKEND_PORT1/g' /usr/local/etc/haproxy/haproxy.cfg
sed -i -e 's/BACKEND_PORT2/$BACKEND_PORT2/g' /usr/local/etc/haproxy/haproxy.cfg
sed -i -e 's/BACKEND1/$BACKEND1/g' /usr/local/etc/haproxy/haproxy.cfg
sed -i -e 's/BACKEND2/$BACKEND2/g' /usr/local/etc/haproxy/haproxy.cfg


#check config
cat /usr/local/etc/haproxy/haproxy.cfg

#launch haproxy with generated config
haproxy -f /usr/local/etc/haproxy/haproxy.cfg > /var/log/haproxy.log 2>/var/log.haproxy.err.log
