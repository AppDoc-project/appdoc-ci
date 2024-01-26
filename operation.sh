#!/bin/bash

# MySQL 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d mysql

# 10초 대기
sleep 10
echo "mysql 실행완료"

# Nginx 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d nginx

docker-compose -f docker-compose.yml up -d redis

docker-compose -f docker-compose.yml up -d mongodb

sleep 5
echo "서버 가동"

# Authentication 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d authentication

# Community 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d community
exi
# Chat 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d socket

# Authentication 및 Community 서비스 로그 합치기
docker-compose -f docker-compose.yml logs -f authentication community socket



