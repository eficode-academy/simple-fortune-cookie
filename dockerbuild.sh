#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please provide your dockerhub username!"
else
  docker build -t $1/fortune_cookie_be:latest -f Dockerfile_be .
  docker build -t $1/fortune_cookie_fe:latest -f Dockerfile_fe .
  if [ -z "$2" ]
    then
      docker image push $1/fortune_cookie_be:latest
      docker image push $1/fortune_cookie_fe:latest
  fi
fi