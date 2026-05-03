FROM grafana/grafana-oss

ENV GF_PLUGINS_ENABLE_ALPHA=true

COPY datasources/ /opt/satisfactory-monitoring/defaults/grafana/provisioning/datasources/
COPY provisioning/dashboards/ /opt/satisfactory-monitoring/defaults/grafana/provisioning/dashboards/
COPY dashboards/ /opt/satisfactory-monitoring/defaults/grafana/dashboards/
COPY icons/ /opt/satisfactory-monitoring/defaults/grafana/icons/
COPY home-dashboard.json /opt/satisfactory-monitoring/defaults/grafana/home-dashboard.json
COPY docker-entrypoint.sh /usr/local/bin/satisfactory-grafana-entrypoint.sh

USER root
RUN chmod +x /usr/local/bin/satisfactory-grafana-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/satisfactory-grafana-entrypoint.sh"]
