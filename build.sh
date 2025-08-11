#!/bin/bash

# Define the image name and tag
IMAGE_NAME="my-php-app"
IMAGE_TAG="production"

# Build the Docker image
docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .

if [ $? -eq 0 ]; then
    echo "Docker image ${IMAGE_NAME}:${IMAGE_TAG} built successfully."
    echo "You can now run it using: docker run -p 8080:80 ${IMAGE_NAME}:${IMAGE_TAG}"
else
    echo "Failed to build Docker image."
    exit 1
fi
