#!/bin/bash
echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker pull "$docker_username/simple-fortune-cookie-backend" 
docker pull "$docker_username/simple-fortune-cookie-frontend" &