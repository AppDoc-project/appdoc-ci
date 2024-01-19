# MySQL 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d mysql

docker-compose -f docker-compose.yml up -d mongodb


docker-compose -f docker-compose.yml up -d redis

docker-compose -f docker-compose.yml up -d nginx
# 10초 대기
Start-Sleep -Seconds 10
Write-Host "mysql mongodb redis nginx 실행완료"

# Authentication 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d authentication

Start-Sleep -Seconds 5
Write-Host "인증 서버 가동"



# Community 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d community

# Chat 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d socket

# Authentication 및 Community 서비스 로그 합치기
docker-compose -f docker-compose.yml logs -f authentication community socket

