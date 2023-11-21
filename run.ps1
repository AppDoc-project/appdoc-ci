# MySQL 서비스 실행
docker-compose up -d mysql

Start-Sleep -Seconds 1

# Authentication 서비스 실행
docker-compose up -d authentication

# Authentication 서비스가 완료될 때까지 대기
Start-Sleep -Seconds 5

# Community 서비스 실행
docker-compose up -d community

# Community 서비스가 완료될 때까지 대기
Start-Sleep -Seconds 5

# Nginx 서비스 실행
docker-compose up -d nginx
