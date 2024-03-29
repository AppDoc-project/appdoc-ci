#!/bin/bash

CONTAINERS=("app_authentication" "app_nginx" "app_community" "app_redis" "app_socket" "app_rabbit")


for container_name in "${CONTAINERS[@]}"
do
    echo "Stopping container: ${container_name}"
    docker stop "${container_name}"

    echo "Removing container: ${container_name}"
    docker rm "${container_name}"
done




