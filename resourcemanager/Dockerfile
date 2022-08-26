FROM hadoop-base

HEALTHCHECK CMD curl -f http://resourcemanager:8088/ || exit 1

ADD start.sh /start.sh
RUN chmod a+x /start.sh

# 8088 : yarn resource manager Web UI
# 8030 : yarn scheduler interface
# 8032 : yarn resource manager IPC port
EXPOSE 8088 8032 8030

CMD ["/start.sh"]
