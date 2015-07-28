#
#   Author: Rohith
#   Date: 2015-07-27 14:06:52 +0100 (Mon, 27 Jul 2015)
#
#  vim:ts=2:sw=2:et
#
FROM fedora:latest
MAINTAINER Rohith <gambol99@gmail.com>

# step: install collectd
RUN dnf install -y collectd
# step: install the various plugins
RUN dnf install -y collectd-dbi collectd-curl collectd-ping collectd-java \
    collectd-mysql collectd-nginx collectd-apache collectd-curl_xml collectd-curl_json \
    collectd-memcachec collectd-iptables collectd-generic-jmx

ADD config/run.sh  /run.sh 
RUN chmod +x /run.sh

ENTRYPOINT [ "/run.sh" ]
