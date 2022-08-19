FROM hs-base

# DataNode Web UI 응답 여부를 통해 Healthcheck
HEALTHCHECK CMD curl -f http://localhost:50075/ || exit 1

# copy config file
ADD hdfs-site.xml /etc/hadoop/

# data 경로 볼륨으로 연결
RUN mkdir /opt/hadoop/dfs/data
VOLUME /opt/hadoop/dfs/data

RUN mkdir -p /opt/hadoop/yarn/data
VOLUME /opt/hadoop/yarn/data

# WebUI, 데이터전송
EXPOSE 50075 50010 8042

ADD start.sh /start.sh
RUN chmod a+x /start.sh

CMD ["/start.sh"]