#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 154350273004.dkr.ecr.ap-northeast-1.amazonaws.com
if [ `docker images | grep 154350273004.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-01-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 154350273004.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-01-ecr-repo
        docker pull 154350273004.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-01-ecr-repo:latest
else
        docker pull 154350273004.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-01-ecr-repo:latest
fi
