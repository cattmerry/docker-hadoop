FROM hadoop-base

HEALTHCHECK CMD curl -f http://localhost:9864/ || exit 1

# copy config file
ADD hdfs-site.xml $HADOOP_CONF_DIR

# datanode data directory
RUN mkdir $HADOOP_HOME/dfs/data

# nodemamager data directory
RUN mkdir -p $HADOOP_HOME/yarn/data

# 9864 : datanode web UT port
# 9866 : The datanode server address and port for data transfer.
# 8042 : yarn nodemanager webapp address
# 8040 : arn.nodemanager.localizer.address
EXPOSE 9864 9866 8042 

ADD start.sh /start.sh
RUN chmod a+x /start.sh

# Datanode에 spark 설치는 필요없지만 yarn container에서 spark app을 실행할때, spark job을 제출한 서버의 spark 설정을 따르게 된다.
# spark설정에서 eventlog 디렉토리를 설정해준 부분이 있는데, 이로 인해 datanode의 yarn container에서 실행되는 spark app 로그는 해당 서버에 남게 된다.
# dummy로 디렉토리를 만들어줘야 함
RUN mkdir -p /opt/spark/eventLog

CMD ["/start.sh"]