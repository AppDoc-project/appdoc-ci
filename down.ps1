# PowerShell 스크립트

$CONTAINERS = @("app_authentication", "app_nginx", "app_community", "app_mysql")

foreach ($container_name in $CONTAINERS) {
    Write-Host "Stopping container: $container_name"
    docker stop $container_name

    Write-Host "Removing container: $container_name"
    docker rm $container_name
}
