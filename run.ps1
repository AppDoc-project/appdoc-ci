# MySQL 서비스 백그라운드로 실행
# docker-compose -f docker-compose.arm.yml up -d mongodb

docker-compose -f docker-compose.yml up -d mysql

docker-compose -f docker-compose.yml up -d mongodb

# 10초 대기
Start-Sleep -Seconds 15
Write-Output "mysql mongodb 실행완료"

# Nginx 서비스 백그라운드로 실행

docker-compose -f docker-compose.yml up -d nginx

docker-compose -f docker-compose.yml up -d redis


Start-Sleep -Seconds 5
Write-Output "서버 가동"

# Authentication 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d socket

docker-compose -f docker-compose.yml up -d authentication

docker-compose -f docker-compose.yml up -d community



# Authentication 및 Community 서비스 로그 합치기
docker-compose -f docker-compose.yml logs -f authentication community socket
