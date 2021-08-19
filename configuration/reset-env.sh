#!/bin/bash

echo "Stopping all container..."

docker-compose down

echo ""
echo "Deleting all containers..."

docker rm -f $(docker ps -a -q)

echo ""
echo "Deleting all volumes..."

docker volume rm $(docker volume ls -q)