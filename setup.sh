#!/usr/bin/env sh
image_version=`date +%Y%m%d%H%M`;
echo $image_version

docker stop test_vue
sleep 1
docker ps -a | grep test_vue | grep -v "grep" | awk '{print $1}' | xargs docker rm -f
sleep 1
docker images | grep test_vue | grep -v "grep" | awk '{print $3}' | xargs docker rmi
sleep 1

docker build -t test_vue .;
docker images;
docker run -p 8220:80 -d --name test_vue --network nginx_bridge_test test_vue;
