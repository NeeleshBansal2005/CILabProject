#!/bin/bash
echo "Building the Docker Image (which runs Maven internally)..."
docker build -f docker/Dockerfile -t ci-calculator .