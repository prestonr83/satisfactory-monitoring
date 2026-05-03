#!/bin/sh
set -eu

mkdir -p /etc/grafana/provisioning /etc/grafana/dashboards /usr/share/grafana/public/img/icons/satisfactory /usr/share/grafana/public/dashboards

if [ ! -d /etc/grafana/provisioning/datasources ] || [ -z "$(find /etc/grafana/provisioning/datasources -type f 2>/dev/null)" ]; then
  mkdir -p /etc/grafana/provisioning/datasources
  cp -R /opt/satisfactory-monitoring/defaults/grafana/provisioning/datasources/. /etc/grafana/provisioning/datasources/
fi

if [ ! -d /etc/grafana/provisioning/dashboards ] || [ -z "$(find /etc/grafana/provisioning/dashboards -type f 2>/dev/null)" ]; then
  mkdir -p /etc/grafana/provisioning/dashboards
  cp -R /opt/satisfactory-monitoring/defaults/grafana/provisioning/dashboards/. /etc/grafana/provisioning/dashboards/
fi

if [ -z "$(find /etc/grafana/dashboards -type f 2>/dev/null)" ]; then
  cp -R /opt/satisfactory-monitoring/defaults/grafana/dashboards/. /etc/grafana/dashboards/
fi

if [ -z "$(find /usr/share/grafana/public/img/icons/satisfactory -type f 2>/dev/null)" ]; then
  cp -R /opt/satisfactory-monitoring/defaults/grafana/icons/. /usr/share/grafana/public/img/icons/satisfactory/
fi

if [ ! -f /usr/share/grafana/public/dashboards/home.json ]; then
  cp /opt/satisfactory-monitoring/defaults/grafana/home-dashboard.json /usr/share/grafana/public/dashboards/home.json
fi

exec /run.sh "$@"
