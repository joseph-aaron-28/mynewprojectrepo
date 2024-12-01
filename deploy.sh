#!/bin/bash

IMAGE_NAME="myproject" 
IMAGE_TAG="latest"    
DOCKER_USERNAME="josephaaron28"
REPO="$1" 

if [ "$REPO" != "dev" ] && [ "$REPO" != "prod" ]; then
    echo "Usage: $0 {dev|prod}"
    exit 1
fi

echo "Authenticating with Docker Hub..."
docker login

FULL_IMAGE_NAME="$DOCKER_USERNAME/$REPO:$IMAGE_TAG"
echo "Tagging image $IMAGE_NAME:$IMAGE_TAG as $FULL_IMAGE_NAME"
docker tag "$IMAGE_NAME:$IMAGE_TAG" "$FULL_IMAGE_NAME"

echo "Pushing image to Docker Hub: $FULL_IMAGE_NAME"
docker push "$FULL_IMAGE_NAME"

echo "Image successfully pushed to Docker Hub: $FULL_IMAGE_NAME"

