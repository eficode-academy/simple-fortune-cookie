#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -t "${DockerRepo}simple-fortune-cookie-backend-$Tag:latest" -t "${DockerRepo}simple-fortune-cookie-$1:1.0-$Tag" backend/
docker build -t "${DockerRepo}simple-fortune-cookie-frontend-$Tag:latest" -t "${DockerRepo}simple-fortune-cookie-$1:1.0-$Tag" frontend/

