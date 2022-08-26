#!/bin/bash

docker-compose down

docker build -t language-base ./languagebase
docker build -t hadoop-base ./hadoop/hadoopbase
docker build -t hadoop-spark-base ./hadoop/hadoopsparkbase