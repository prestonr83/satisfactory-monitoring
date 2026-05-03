#!/bin/sh
set -eu

mkdir -p /etc/alertmanager/templates /alertmanager

if [ -z "$(find /etc/alertmanager/templates -type f 2>/dev/null)" ]; then
  cp -R /opt/satisfactory-monitoring/defaults/alertmanager/templates/. /etc/alertmanager/templates/
fi

exec /bin/alertmanager "$@"
