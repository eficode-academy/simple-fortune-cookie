#!/bin/bash
docker build -t fortune_cookie_be -f Dockerfile_be .
docker build -t fortune_cookie_fe -f Dockerfile_fe .
docker image push $1/fortune_cookie_be
docker image push $1/fortune_cookie_fe
