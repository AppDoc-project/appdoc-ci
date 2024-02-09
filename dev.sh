#!/bin/bash

# MySQL 서비스 백그라운드로 실행
docker-compose -f docker-compose.dev.yml up -d mysql

# Nginx 서비스 백그라운드로 실행
docker-compose -f docker-compose.dev.yml up -d nginx

docker-compose -f docker-compose.dev.yml up -d redis

docker-compose -f docker-compose.dev.yml up -d mongodb

sleep 10
echo "서버 가동"

# Authentication 서비스 백그라운드로 실행
docker-compose -f docker-compose.dev.yml up -d authentication

sleep 5
# Community 서비스 백그라운드로 실행
docker-compose -f docker-compose.dev.yml up -d community
exi
# Chat 서비스 백그라운드로 실행
docker-compose -f docker-compose.dev.yml up -d socket

# Authentication 및 Community 서비스 로그 합치기
docker-compose -f docker-compose.dev.yml logs -f authentication community socket



