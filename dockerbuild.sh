#!/bin/bash
docker build -t fortune_cookie_be -f Dockerfile_be .
docker build -t fortune_cookie_fe -f Dockerfile_fe .
docker image push fortune_cookie_be
docker image push fortune_cookie_fe
