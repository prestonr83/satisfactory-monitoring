FROM grafana/grafana-oss

ENV GF_PLUGINS_ENABLE_ALPHA=true

COPY datasources/ /etc/grafana/provisioning/datasources/
COPY provisioning/dashboards/ /etc/grafana/provisioning/dashboards/
COPY dashboards/ /etc/grafana/dashboards/
COPY icons/ /usr/share/grafana/public/img/icons/satisfactory/
COPY home-dashboard.json /usr/share/grafana/public/dashboards/home.json
