#!/bin/bash
# Deployment script for Calculator application

echo "========================================"
echo "Deploying Calculator Application"
echo "========================================"

# Configuration
IMAGE_NAME="calculator-app"
VERSION="latest"
CONTAINER_NAME="calculator-container"

# Stop and remove existing container if running
echo "Stopping existing container (if any)..."
docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true

# Build Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME:$VERSION -f docker/Dockerfile .

if [ $? -ne 0 ]; then
    echo "Docker build failed!"
    exit 1
fi

# Run the container
echo "Running Docker container..."
docker run -d --name $CONTAINER_NAME $IMAGE_NAME:$VERSION

if [ $? -ne 0 ]; then
    echo "Failed to start container!"
    exit 1
fi

echo "========================================"
echo "Deployment completed successfully!"
echo "Container: $CONTAINER_NAME"
echo "Image: $IMAGE_NAME:$VERSION"
echo "========================================"

# Show running containers
docker ps | grep $CONTAINER_NAME

exit 0
