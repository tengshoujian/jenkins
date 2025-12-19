#!/bin/bash
echo "*******************"
echo "*****push image****"
echo "*******************"

IMAGE="maven-project"

echo "*****login*********"
docker login -u tengshoujian -p $PASS
echo "******tag iamge****"

docker tag $IMAGE:$BUILD_TAG tengshoujian/$IMAGE:$BUILD_TAG

echo "************push image*******"

docker push tengshoujian/$IMAGE:$BUILD_TAG

