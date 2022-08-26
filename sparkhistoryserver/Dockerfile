FROM hadoop-spark-base

HEALTHCHECK CMD curl -f http://localhost:18080/ || exit 1

# 18080 : spark history web UI port
EXPOSE 18080

COPY start.sh /start.sh
RUN chmod 700 /start.sh

CMD ["/start.sh"]
