FROM prom/prometheus

COPY prometheus.yml /opt/satisfactory-monitoring/defaults/prometheus/prometheus.yml
COPY nodes/ /opt/satisfactory-monitoring/defaults/prometheus/nodes/
COPY rules/ /opt/satisfactory-monitoring/defaults/prometheus/rules/
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

USER root
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["--storage.tsdb.path=/prometheus", "--web.console.libraries=/usr/share/prometheus/console_libraries", "--web.console.templates=/usr/share/prometheus/consoles"]
