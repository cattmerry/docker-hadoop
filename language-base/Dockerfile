FROM centos

MAINTAINER cattmerry@gmail.com

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install -y wget
RUN yum -y groupinstall "Development Tools"
RUN yum -y install openssl-devel bzip2-devel libffi-devel


ENV SPARK_VERSION=3.3.0
ENV HADOOP_VERSION=3.2.4
ENV PYTHON_VERSION=3.7.6
ENV PYTHON_URL=https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz
ENV HADOOP_URL=https://dlcdn.apache.org/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz
ENV SAPRK_URL=https://dlcdn.apache.org/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop3.tgz

# python install
RUN wget $PYTHON_URL
RUN tar -xvzf Python-$PYTHON_VERSION.tgz && rm Python-$PYTHON_VERSION.tgz
RUN /Python-$PYTHON_VERSION/configure --enable-optimizations
RUN make altinstall
RUN ln -s /usr/local/bin/python3.7 /usr/bin/python3

# java install
RUN yum install -y java-1.8.0-openjdk.x86_64
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.312.b07-2.el8_5.x86_64/jre
