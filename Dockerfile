FROM prom/prometheus:latest

# Copy prometheus config
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose port untuk Railway
EXPOSE 9090

# Override default command untuk Railway
CMD ["--config.file=/etc/prometheus/prometheus.yml", \
     "--storage.tsdb.path=/prometheus", \
     "--web.console.libraries=/etc/prometheus/console_libraries", \
     "--web.console.templates=/etc/prometheus/consoles", \
     "--web.enable-lifecycle", \
     "--web.listen-address=0.0.0.0:9090"]
