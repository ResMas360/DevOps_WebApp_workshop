#!/bin/bash
docker stop webapp && docker rm webapp
docker rmi nodeapp:v1
cd /home/jenkins/tmp
docker build -t nodeapp:v1 .
docker container run -d --name webapp -p 8080:8080 nodeapp:v1
