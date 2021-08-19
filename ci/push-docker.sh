#!/bin/bash
echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker push simplefortunecookielmao/sfc:tagname
wait