image_version=`date +%Y%m%d%H%M`;
echo $image_version
git pull --rebase origin master;
docker stop test_vue;
docker rm test_vue;
docker build -t test_vue:$image_version .;
docker images;
docker run -p 8220:80 -d --name test_vue test_vue:$image_version;
docker logs test_vue;