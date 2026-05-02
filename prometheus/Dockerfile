FROM prom/prometheus

COPY prometheus.yml /etc/prometheus-src/prometheus.yml
COPY nodes/ /etc/prometheus-src/nodes/
COPY rules/ /etc/prometheus-src/rules/
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

USER root
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["--storage.tsdb.path=/prometheus", "--web.console.libraries=/usr/share/prometheus/console_libraries", "--web.console.templates=/usr/share/prometheus/consoles"]
