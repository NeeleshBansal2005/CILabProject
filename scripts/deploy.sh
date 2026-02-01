#!/bin/bash
echo "Deploying the container..."
# Stop any old container so we don't get a 'name already in use' error
docker stop ci-calculator || true
docker rm ci-calculator || true
# Run the new container
docker run -d -p 8081:8080 --name ci-calculator ci-calculator