#!/bin/bash

# MySQL 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d mysql

# 10초 대기
sleep 10
echo "mysql 실행완료"

# Nginx 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d nginx

docker-compose -f docker-compose.arm.yml up -d redis

docker-compose -f docker-compose.arm.yml up -d mongodb

# Authentication 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d authentication

# Community 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d community

# Chat 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d socket

# Authentication 및 Community 서비스 로그 합치기
docker-compose -f docker-compose.arm.yml logs -f authentication community socket



