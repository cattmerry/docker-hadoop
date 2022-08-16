FROM language-base

# spark setting
RUN wget $SAPRK_URL
RUN tar -xvzf spark-$SPARK_VERSION-bin-hadoop3.tgz && rm spark-$SPARK_VERSION-bin-hadoop3.tgz
RUN mv spark-$SPARK_VERSION-bin-hadoop3 opt
RUN ln -s /opt/spark-$SPARK_VERSION-bin-hadoop3/ /opt/spark

ENV SPARK_HOME=/opt/spark
ENV PATH=$PATH:$SPARK_HOME/bin

# hadoop setting
RUN wget $HADOOP_URL
RUN tar -xvzf hadoop-$HADOOP_VERSION.tar.gz && rm hadoop-$HADOOP_VERSION.tar.gz
RUN mv hadoop-$HADOOP_VERSION /opt
RUN ln -s /opt/hadoop-$HADOOP_VERSION /opt/hadoop
RUN mkdir /opt/hadoop/dfs
RUN ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop
RUN rm -rf /opt/hadoop/share/doc

ADD core-site.xml /etc/hadoop
ADD yarn-site.xml /etc/hadoop
ADD mapred-site.xml /etc/hadoop

ENV HADOOP_HOME=/opt/hadoop
ENV HADOOP_CONF_DIR=/etc/hadoop
ENV YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop

ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
