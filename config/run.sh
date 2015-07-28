#!/bin/bash
#
#   Author: Rohith
#   Date: 2015-07-27 14:17:43 +0100 (Mon, 27 Jul 2015)
#
#  vim:ts=2:sw=2:et
#
annonce() {
  [ -n "$@" ] && echo "[v] $@"
}

ARGS="$1"
# check: do we just wanna jump into the container?
[[ "$ARGS" =~ ^bash$ ]] && exec /bin/$1
# step: start the collectd service in the foreground
annonce "Starting the collectd service"
/usr/sbin/collectd -f $@
