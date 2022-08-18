#!/bin/bash
docker build -t $1/fortune_cookie_be:latest -f Dockerfile_be .
docker build -t $1/fortune_cookie_fe:latest -f Dockerfile_fe .
docker image push $1/fortune_cookie_be:latest
docker image push $1/fortune_cookie_fe:latest
