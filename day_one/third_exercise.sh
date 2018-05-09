#!/bin/bash

echo "----------------------------------"
echo " Start nginx based image "
echo "----------------------------------"

docker container run -ti -p 8080:80 \
  mercadolibre/nginx-workshop bash

echo "----------------------------------"
echo " Running containers "
echo "----------------------------------"

docker container ps

echo "----------------------------------"
echo " All containers "
echo "----------------------------------"

docker container ps -a

echo "----------------------------------"
echo " Starting attached nginx "
echo "----------------------------------"

docker container run -ti -p 8080:80 \
  mercadolibre/nginx-workshop \
  nginx -g "daemon off;"


echo "----------------------------------"
echo " Running containers "
echo "----------------------------------"

docker container ps

echo "----------------------------------"
echo " Starting detached nginx "
echo "----------------------------------"

docker kill nginx 2> /dev/null
docker rm nginx 2> /dev/null # force deletion of nginx container
docker container run -ti -p 8080:80 \
	--name nginx \
	-d \
  mercadolibre/nginx-workshop \
  nginx -g "daemon off;"

echo "----------------------------------"
echo " Running containers "
echo "----------------------------------"

docker container ps

docker container cp third_exercise_index.html nginx:/myhtmls/index.html

docker container run -ti -p 8080:80 \
	--name nginx \
	--mount "type=bind,\
source=/home/workshop/html,\
target=/myhtmls" \
mercadolibre/nginx-workshop nginx
