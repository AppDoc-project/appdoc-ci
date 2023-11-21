#!/bin/bash

# MySQL 서비스 실행
docker-compose up -d mysql

sleep 1

# Authentication 서비스 실행
docker-compose up -d authentication

# Authentication 서비스가 완료될 때까지 대기

sleep 5

# Community 서비스 실행
docker-compose up -d community

# Community 서비스가 완료될 때까지 대기

sleep 5

# Nginx 서비스 실행
docker-compose up -d nginx


