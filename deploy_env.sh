image_verion=`date +%Y%m%d%H%M`
echo ${image_version}
docker container rm -f house-web
docker build -t house-web .
docker run -p 48080:8080 -d --name house-web house-web

