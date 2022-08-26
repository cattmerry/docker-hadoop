#!/bin/bash

docker-compose down

docker build -t language-base ./languagebase
docker build -t hadoop-base ./hadoopbase
docker build -t hadoop-spark-base ./hadoopsparkbase

docker build -t hadoop-namenode ./namenode
docker build -t hadoop-datanode ./datanode
docker build -t resourcemanager ./hadoop/resourcemanager
docker build -t yarn-timelineserver ./hadoop/yarntimelineserver
docker build -t spark-historyserver ./hadoop/sparkhistoryserver
docker build -t zeppelin ./hadoop/zeppelin

docker-compose up -d