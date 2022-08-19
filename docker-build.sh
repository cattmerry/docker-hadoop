#!/bin/bash

docker-compose down

docker build -t hs-base ./hadoop/base
docker build -t hadoop-namenode ./hadoop/namenode
docker build -t hadoop-datanode ./hadoop/datanode