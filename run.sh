#!/bin/bash

# Docker Compose 파일을 명시적으로 지정하여 실행
docker-compose -f docker-compose.arm.yml up -d mysql

# MySQL 서비스가 완료될 때까지 대기
sleep 5

# Docker Compose 파일을 명시적으로 지정하여 실행
docker-compose -f docker-compose.arm.yml up -d authentication

# Authentication 서비스가 완료될 때까지 대기
sleep 5

# Docker Compose 파일을 명시적으로 지정하여 실행
docker-compose -f docker-compose.arm.yml up -d community

# Community 서비스가 완료될 때까지 대기
sleep 5

# Docker Compose 파일을 명시적으로 지정하여 실행
docker-compose -f docker-compose.arm.yml up -d nginx
