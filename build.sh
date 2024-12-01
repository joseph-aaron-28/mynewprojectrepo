#!/bin/bash



IMAGE_NAME="myproject" 
IMAGE_TAG="latest"           
DOCKERFILE="dockerfile"    
CONTEXT="."           

echo "Building Docker image: $IMAGE_NAME:$IMAGE_TAG"
docker build -t "$IMAGE_NAME:$IMAGE_TAG" -f "$DOCKERFILE" "$CONTEXT"

echo "Docker image $IMAGE_NAME:$IMAGE_TAG built successfully."
