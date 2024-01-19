# MySQL 서비스 백그라운드로 실행
docker-compose up -d mysql

# 10초 대기
Start-Sleep -Seconds 10
Write-Output "mysql 실행완료"

# Nginx 서비스 백그라운드로 실행
docker-compose up -d nginx

docker-compose up -d redis

docker-compose up -d mongodb

Start-Sleep -Seconds 5
Write-Output "서버 가동"

# Authentication 서비스 백그라운드로 실행
docker-compose up -d authentication

# Community 서비스 백그라운드로 실행
docker-compose up -d community

# Chat 서비스 백그라운드로 실행
docker-compose up -d socket

# Authentication 및 Community 서비스 로그 합치기
docker-compose logs -f authentication, community, socket
