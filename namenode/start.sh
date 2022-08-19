#!/bin/bash

# 네임스페이스 디렉토리를 입력받아서 
NAME_DIR=$1
echo $NAME_DIR

# 비어있지 않다면 이미 포맷된 것이므로 건너뛰고
if [ "$(ls -A $NAME_DIR)" ]; then
  echo "NameNode is already formatted."
# 비어있다면 포맷을 진행
else
  echo "Format NameNode."
  $HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR namenode -format
fi

# NameNode 기동
$HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR namenode
