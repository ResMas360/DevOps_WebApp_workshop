#!/bin/bash
docker stop webapp && docker rm webapp
docker rmi nodeapp:v1
docker build -t nodeapp:v1 -f /home/jenkins/tmp/Dockerfile
docker container run -d --name webapp -p 8080:8080 nodeapp:v1
