# MySQL 서비스 삭제
Remove-Item -Path .\mysql -Recurse -Force

# MySQL 서비스 백그라운드로 실행
docker-compose -f docker-compose.arm.yml up -d mysql

# 10초 대기
Start-Sleep -Seconds 10
Write-Host "mysql 실행완료"

# Nginx 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d nginx

# Authentication 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d authentication

# Community 서비스 백그라운드로 실행
docker-compose -f docker-compose.yml up -d community

# Authentication 및 Community 서비스 로그 합치기
docker-compose -f docker-compose.yml logs -f authentication community
