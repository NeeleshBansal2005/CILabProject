#!/bin/bash
echo "Deploying the Calculator App container..."
# Stop any old version of the app if it's running
docker stop ci-calculator || true
docker rm ci-calculator || true
# Run the new version
docker run -d --name ci-calculator -p 8080:8080 calculator-app:latest