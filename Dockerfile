FROM haproxy:1.5
MAINTAINER Orange Elpaaso Team <xx@orange.com>
COPY haproxy.cfg.template /usr/local/etc/haproxy/haproxy.cfg.template
COPY configure.sh /usr/local/etc/haproxy/configure.sh

RUN chmod ugo+x configure.sh

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]