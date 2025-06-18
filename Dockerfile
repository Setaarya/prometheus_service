FROM prom/prometheus:latest

# Copy prometheus config
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose port untuk Railway
EXPOSE 9090

# Correct CMD format - butuh executable path
# Gunakan ENTRYPOINT default dari base image, override dengan CMD
CMD ["--config.file=/etc/prometheus/prometheus.yml", \
     "--storage.tsdb.path=/prometheus", \
     "--web.enable-lifecycle", \
     "--web.listen-address=0.0.0.0:9090"]
