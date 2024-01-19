#!/bin/bash

# MySQL 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d mysql

docker-compose -f docker-compose.arm.yml up -d mongodb

docker-compose -f docker-compose.arm.yml up -d redis

docker-compose -f docker-compose.arm.yml up -d nginx

# 10초 대기
sleep 10
echo "mysql mongodb redis nginx 실행완료"


# Authentication 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d authentication

sleep 5
echo "인증 서버 가동"



# Community 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d community

# Chat 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d socket

# Authentication 및 Community 서비스 로그 합치기
docker-compose -f docker-compose.arm.yml logs -f authentication community socket



