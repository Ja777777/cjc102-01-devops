#!/bin/bash
docker run -p 80:5000 --name flask-devops -d 154350273004.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-01-ecr-repo:latest

sleep 20s
