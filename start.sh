#!/bin/bash

root="$PWD"
cd $root/hadoop/bash
docker build -t hadoop-base:2.9.2 .
cd $root/hadoop/namenode
docker build -t hadoop-namenode:2.9.2 .
cd $root/hadoop/datanode
docker build -t hadoop-datanode:2.9.2 .

cd $root/hadoop
docker-compose up
