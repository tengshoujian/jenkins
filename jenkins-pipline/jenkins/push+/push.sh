#!/bin/bash
echo "*******************"
echo "*****push image****"
echo "*******************"

IMAGE="maven-project"

echo "*****login*********"
docker login -u tengshoujian -p $PASS
echo "******tag iamge****"

docker tag $IMAGE:$TAG tengshoujian/$IMAGE:$TAG

echo "************push image*******"

docker push tengshoujian/$IMAGE:$TAG

